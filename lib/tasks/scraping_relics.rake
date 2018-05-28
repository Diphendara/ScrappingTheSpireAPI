desc "This task make the scraping of the Relics and add them to the database"

require "nokogiri"
require "open-uri"

task :scraping_relics => :environment do
  rarities = {"Starter" => 0, "Common" => 1, "Uncommon" => 2, "Rare" => 3, "Boss" => 4, "Event" => 5, "Shop" => 6}
  web = "https://slaythespire.gamepedia.com"
  relics_url = "/Category:Relics"
  doc = Nokogiri::HTML(open(web + relics_url))

  doc.css("#mw-pages > div > div > div[@class='mw-category-group']").each do |block|
    begin
      block.search("ul > li").each do |line|
        url = line.search("@href").text
        add_relic(url, web, rarities)
      end
    rescue Exception => ex
      puts "Exception in trying to get data from a row: \n #{ex}"
      puts "Jumps to the next row"
      next
    end
  end
end

def add_relic(item_url, web, rarities)
  item_web = Nokogiri::HTML(open(web + item_url))
  item_table = item_web.css("table.infoboxtable").search("tr")
  begin
    name = item_table[0].text.strip
    image = item_table[1].search("@src")
    rarityCode = rarities[item_table[3].search("td")[1].text.strip]
    description = item_table[5].text.strip
    lore = item_table[7].text.strip
    #puts "New record --> Name: #{name} CODE: #{rarityCode} image: #{image} Description: #{description} Lore: #{lore}"
    relic = Relic.create!(image: image, name: name, rarity: rarityCode, description: description, lore: lore)
    add_keyword_relics(relic)
  rescue Exception => ex
    puts item_url
    puts "Exception in trying to get data from a TR: \n #{ex}"
  end
end

def add_keyword_relics(relic)
  cleanDescription = relic.description.gsub! ".", ""
  cleanDescription.downcase!
  cleanDescription.split(" ").each do |word|
    keyword = Keyword.where("lower(name) like ?", "#{word}").first
    unless keyword.nil?
      KeywordRelic.create!(relic_id: relic.id, keyword_id: keyword.id)
    end
  end
end
