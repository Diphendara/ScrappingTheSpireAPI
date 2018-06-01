desc "This task make the scraping of the Relics and add them to the database"

require "nokogiri"
require "open-uri"

task :scraping_events => :environment do
  web = "https://slaythespire.gamepedia.com"
  events_urls = ["/Category:Act_1_Events", "/Category:Act_2_Events", "/Category:Act_3_Events"]
  id_act = 1
  events_urls.each do |event_web|
    doc = Nokogiri::HTML(open(web + event_web))
    search_events(doc, web, id_act)
    id_act += 1
  end
end

def search_events(doc, web, id_act)
  doc.css("#mw-pages > div > div > div[@class='mw-category-group']").each do |block|
    begin
      block.search("ul > li").each do |line|
        url = line.search("@href").text
        add_event(url, web, id_act)
      end
    rescue Exception => ex
      puts "Exception in trying to get data from a row: \n #{ex}"
      puts "Jumps to the next row"
      next
    end
  end
end

def add_event(url, web, id_act)
  item_web = Nokogiri::HTML(open(web + url))
  name = item_web.css("#firstHeading").text
  description = ""
  item_web.css("#mw-content-text > ul > li").each do |option|
    description += option.text + "\n"
  end
  #puts "Name: #{name}\nDescription:#{description}"
  event = Event.create!(name: name, description: description, act_id: id_act)
end
