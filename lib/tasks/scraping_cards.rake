desc "This task make the scraping of the Relics and add them to the database"

require "nokogiri"
require "open-uri"

task :scraping_cards => :environment do
  categories = {"Attack" => 0, "Skill" => 1, "Power" => 2, "Status" => 3, "Curse" => 4}
  decks = {"Green" => 0, "Red" => 1, "Blue" => 2, "Colorless" => 3, "Curses" => 4, "States" => 5}
  web = "https://slaythespire.gamepedia.com"
  cards_url = "/Category:Cards"
  doc = Nokogiri::HTML(open(web + cards_url))

  doc.css("#mw-pages > div > div > div[@class='mw-category-group']").each do |block|
    begin
      block.search("ul > li").each do |line|
        url = line.search("@href").text
        add_card(url, web, categories, decks)
      end
    rescue OpenURI::HTTPError => ex
      puts "Exception in try to enter in #{web + url}.\n #{ex}"
      next
    end
  end
end

def add_card(item_url, web, categories, decks)
  item_web = Nokogiri::HTML(open(web + item_url))
  item_table = item_web.css("table.infoboxtable").search("tr")
  begin
    name = item_table[0].text.strip
    image = item_table[1].search("@src")
    category = categories[item_table[3].search("td")[1].text.strip]
    if (category == 3 || category == 4)
      if category == 3
        deck = decks["States"]
      else
        deck = decks["Curses"]
      end
      energy = item_table[4].search("td")[1].text.strip
      description = item_table[6].text.strip
    else
      deck = decks[item_table[4].search("td")[1].text.strip]
      energy = item_table[5].search("td")[1].text.strip
      description = item_table[7].text.strip
    end
    card = Card.create!(image: image, energyCost: energy, name: name, category: category, deck: deck, description: description)
    add_cards_keywords(card)
  rescue ActiveRecord::RecordInvalid => ex
    puts web + item_url
    puts "Exception, special case in create card for #{item_url} :\n #{ex}"
  rescue NoMethodError => ex
    puts "Exception in trying to insert this Card --> #{item_url} in the database.\n #{ex}"
  end
end

def add_cards_keywords(card)
  cleanDescription = card.description.gsub! ".", ""
  cleanDescription.downcase!
  begin
    cleanDescription.split(" ").each do |word|
      keyword = Keyword.where("lower(name) like ?", "#{word}").first
      unless keyword.nil?
        CardsKeyword.create!(card_id: card.id, keyword_id: keyword.id)
      end
    end
  rescue ActiveRecord::RecordInvalid => ex
    puts "Exception in trying to create keyword relation with #{card.name}:\n #{ex}"
  end
end
