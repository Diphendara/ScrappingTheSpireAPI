desc 'This task make the scraping of the Relics and add them to the database'

require "nokogiri"
require "open-uri"

task :scraping_relics => :environment do
  # Fetch and parse HTML document
  doc = Nokogiri::HTML(open("https://slaythespire.gamepedia.com/Relics"))
  keys = {"Starter" => 0, "Common" => 1, "Uncommon" => 2, "Rare" => 3, "Boss" => 4, "Event" => 5, "Shop" => 6}

  table = doc.at("table")

  table.search("tr").each do |tr|
  cells = tr.search("td")
  begin # "try" block
      image = cells[0].text.strip
      name = cells[1].text.strip
      rarity = cells[2].text.strip
      rarityCode = keys[cells[2].text.strip]
      description = cells[3].text.strip
  rescue # optionally: `rescue Exception => ex`
      next
  end
  Relic.create!(name: name, rarity:rarityCode, description: description, lore: "f")
  puts "Name: #{name} Rarity: #{rarity} CODE: #{rarityCode}  Description: #{description}"
  end
end
