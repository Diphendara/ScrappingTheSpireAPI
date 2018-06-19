desc "This task make the scraping of the Relics and add them to the database"

require "nokogiri"
require "open-uri"

task :scraping_events => :environment do
  web = "https://slaythespire.gamepedia.com"
  events_urls = ["/Category:Act_1_Events", "/Category:Act_2_Events", "/Category:Act_3_Events"]
  id_act = 1
  @newImputs = []

  events_urls.each do |event_web|
    begin
      doc = Nokogiri::HTML(open(web + event_web))
      search_events(doc, web, id_act)
      id_act += 1
    rescue OpenURI::HTTPError => ex
      puts "Exception in try to enter in #{web + event_web}.\n #{ex}"
      next
    end
  end
  printNewRecords
end

def search_events(doc, web, id_act)
  doc.css("#mw-pages > div > div > div[@class='mw-category-group']").each do |block|
    begin
      block.search("ul > li").each do |line|
        url = line.search("@href").text
        event_page = Nokogiri::HTML(open(web + url))
        add_event(event_page, id_act)
      end
    rescue OpenURI::HTTPError => ex
      puts "Exception in try to enter in #{web + url}.\n #{ex}"
      next
    end
  end
end

def add_event(event_page, id_act)
  name = event_page.css("#firstHeading").text
  description = ""
  event_page.css("#mw-content-text > ul > li").each do |option|
    description += option.text + "\n"
  end

  begin
    event = Event.create!(name: name, description: description, act_id: id_act)
    @newImputs << event
  rescue ActiveRecord::RecordInvalid => ex
    puts "Exception in create a new event.\n #{ex}"
  end
end

def printNewRecords
  puts "New records added:"
  @newImputs.each do |input|
    puts input.name
  end
end
