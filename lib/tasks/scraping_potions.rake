desc "This task make the scraping of the Relics and add them to the database"

require "nokogiri"
require "open-uri"

task :scraping_potions => :environment do
  web = "https://slaythespire.gamepedia.com"
  potions_url = "/Potions"
  doc = Nokogiri::HTML(open(web + potions_url))

  table = doc.at("table").search("tr").each do |tr|
    begin
      add_potion(tr.search("td"))
    rescue ActiveRecord::RecordInvalid => ex
      puts "Exception in trying to get data from a row:\n #{ex}"
      puts "Jumps to the next row"
      next
    rescue NoMethodError => ex
      puts "Exception in get the TD of the table.\n #{ex}"
      next
    end
  end
end

def add_potion(tds)
  image = tds[0].search("@src")
  name = tds[1].text.strip
  effect = tds[2].text.strip
  begin
    potion = Potion.create!(image: image, name: name, effect: effect)
    add_keyword_potions(potion)
  rescue ActiveRecord::RecordInvalid => ex
    puts "Exception in trying to create new Potion.\n #{ex}"
  rescue NoMethodError => ex
    puts "Exception in get info for a new Potion.\n #{ex}"
  end
end

def add_keyword_potions(potion)
  cleanEffect = potion.effect.gsub! ".", ""
  cleanEffect.downcase!
  begin
    cleanEffect.split(" ").each do |word|
      keyword = Keyword.where("lower(name) like ?", "#{word}").first
      unless keyword.nil?
        KeywordPotion.create!(potion_id: potion.id, keyword_id: keyword.id)
      end
    end
  rescue ActiveRecord::RecordInvalid => ex
    puts "Exception in trying to create keyword relation with #{potion.name}:\n #{ex}"
  end
end
