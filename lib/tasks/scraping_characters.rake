desc "This task make the scraping of the Relics and add them to the database"

require "nokogiri"
require "open-uri"

task :scraping_characters => :environment do
  web = "https://slaythespire.gamepedia.com"
  relics_urls = ["/The_Ironclad", "/The_Silent", "/The_Defect"]

  relics_urls.each do |char_web|
    doc = Nokogiri::HTML(open(web + char_web))

    table_trs = doc.at("table").search("tr")
    begin
      name = table_trs[0].text.strip
      image = table_trs[1].search("@src")
      hp = table_trs[3].search("td")[1].text.strip
      gold = table_trs[4].search("td")[1].text.strip
      relic_id = Relic.find_by_name(table_trs[5].search("td")[1].text.strip).id #Bug in the beta PJ bcs his relic is not in the list of the relics
      description = table_trs[7].text.strip
    rescue Exception => ex
      puts ex
    end
    puts " New record --> Name: #{name} IMG: #{image} HP: #{hp} Gold: #{gold} Description: #{description} Relic ID: #{relic_id}"
    Character.create!(image: image, name: name, hp: hp, gold: gold, relic_id: relic_id, description: description)
  end
end
