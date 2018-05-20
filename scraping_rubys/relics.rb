require "nokogiri"
require "open-uri"

# Fetch and parse HTML document
doc = Nokogiri::HTML(open("https://slaythespire.gamepedia.com/Relics"))
keys = {"Starter" => 0, "Common" => 1, "Uncommon" => 2, "Rare" => 3, "Boss" => 4, "Event" => 5, "Shop" => 6}

table = doc.at("table")

table.search("tr").each do |tr|
  cells = tr.search("td")
  begin # "try" block
    String image = cells[0].text.strip
    String name = cells[1].text.strip
    String rarity = cells[2].text.strip
    String rarityCode = keys[cells[2].text.strip]
    String description = cells[3].text.strip
  rescue # optionally: `rescue Exception => ex`
    next
  end
  puts "Name: #{name} Rarity: #{rarity} CODE: #{rarityCode}  Description: #{description}"
end
