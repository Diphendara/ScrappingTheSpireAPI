desc "This task make the scraping of the Relics and add them to the database"

require "nokogiri"
require "open-uri"

task :scraping_characters => :environment do
  web = "https://slaythespire.gamepedia.com"
  character_urls = ["/The_Ironclad", "/The_Silent", "/The_Defect"]

  character_urls.each do |char_web|
    begin
      doc = Nokogiri::HTML(open(web + char_web))
      add_character(doc)
    rescue OpenURI::HTTPError => ex
      puts "Exception in try to enter in #{web + char_web}.\n #{ex}"
      next
    end
  end
end

def add_character(web)
  table_trs = web.at("table").search("tr")
  name = table_trs[0].text.strip
  image = table_trs[1].search("@src")
  hp = table_trs[3].search("td")[1].text.strip
  gold = table_trs[4].search("td")[1].text.strip
  description = table_trs[7].text.strip

  begin
    relic_id = Relic.find_by_name(table_trs[5].search("td")[1].text.strip).id #Bug in the beta PJ bcs his relic is not in the list of the relics

    Character.create!(image: image, name: name, hp: hp, gold: gold, relic_id: relic_id, description: description)
  rescue ActiveRecord::RecordInvalid => ex
    puts "Exception in trying to create new Character.\n #{ex}"
  rescue NoMethodError => ex
    puts "Exception in trying to search a Relic in the database in #{name} .\n #{ex}"
  end
end
