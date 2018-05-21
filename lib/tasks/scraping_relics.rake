desc "This task make the scraping of the Relics and add them to the database"

require "nokogiri"
require "open-uri"

task :scraping_relics => :environment do
  web = "https://slaythespire.gamepedia.com"
  relics_url = "/Relics"

  doc = Nokogiri::HTML(open(web + relics_url))
  rarities = {"Starter" => 0, "Common" => 1, "Uncommon" => 2, "Rare" => 3, "Boss" => 4, "Event" => 5, "Shop" => 6}

  doc.at("table").search("tr").each do |tr|
    begin # "try" block
      cells = tr.search("td")

      item_url = cells[1].search("@href").text
      item_web = Nokogiri::HTML(open(web + item_url))

      item_table_info = item_web.css("table.infoboxtable").search("tr")
      begin
        name = item_table_info[0].text.strip
        rarityCode = rarities[item_table_info[3].search("td")[1].text.strip]
        description = item_table_info[5].text.strip
        lore = item_table_info[7].text.strip
      rescue Exception => ex
        puts ex
      end
      puts " New record --> Name: #{name} CODE: #{rarityCode} Description: #{description} Lore: #{lore}"
      Relic.create!(name: name, rarity: rarityCode, description: description, lore: lore)
    rescue Exception => ex
      puts ex
      next
    end
  end
end
