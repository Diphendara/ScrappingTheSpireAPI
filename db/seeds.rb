# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

keywords = Keyword.create([
  {name: "Heal", description: "Restore X hp to your character."},
  {name: "Draw", description: "Draw X cards."},
  {name: "Discard", description: "Discard X cards"},
  {name: "Block", description: "Until the next turn, prevents damage."},
  {name: "Rest Site", description: "Place on the map where you can rest or upgrade a card."},
  {name: "Attack", description: "Type of card who deals damage to a enemy."},
  {name: "Vulnerable", description: "Vulnerable creatures take 50% more damage from Attacks."},
  {name: "Exhaust", description: "Remove a card until end of combat."},
  {name: "Poison", description: "Poisened creatures lose HP at the start of their turn. Each turn, Poison is reduced by 1."},
  {name: "Shiv", description: "Shivs are 0 cost Attack cards which Exhaust."},
  {name: "Unplayable", description: "Unplayable cards cannot be played from your hand."},
  {name: "Intangible", description: "Reduce all damage taken and hp loss to 1."},
  {name: "Dexterity", description: "Desterity improves Block gained from cards,"},
  {name: "Innate", description: "Start each combat with this card in your hand."},
  {name: "Weak", description: "Weakened creatures deal 25% less damage with Attacks."},
  {name: "Retain", description: "Retained cards are not discarded at the end of turn."},
  {name: "Strength", description: "Strength adds additional damage to Attacks."},
  {name: "Ethereal", description: "If this card is in your hand at the end of the turn , it is Exhausted"},
  {name: "Add a random Attack", description: "Add a random Attack card to your hand."},
  {name: "Add a random Skill", description: "Add a random Skill card to your hand."},
  {name: "Add a random Power", description: "Add a random Power card to your hand."},
  {name: "Dazed", description: "Dazed are Unplayable status cards."},
])

#Special cases cars
cards = Card.create([
  {image: "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/0/0a/Defend.png?version=a02d3db0019a2e730d7853d6be5039ec", energyCost: 1, name: "Defend", category: 1, deck: 1, description: "Gain 5(8) Block."},
  {image: "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/2/29/Bite.png?version=7bdaa0a62af97edd9bd21731cf33a4a2", energyCost: 1, name: "Bite", category: 0, deck: 3, description: "Deal 7 (8) damage. Heal 2 (3) HP."},
])

acts = Act.create([
  {name: "Act 1: The Exordium"},
  {name: "Act 2: The City"},
  {name: "Act 3: The Beyond"},
])

t.integer "minHP"
t.integer "maxHP"
t.string "appearance"
t.boolean "isElite"
t.boolean "isBoss"
t.integer "act_id"

commonEnemiesActOne = Enemy.create([
  {name: "Cultist", description: "A cultist who cast a powerful spell for gain strength each turn.", minHP: 48, maxHP: 55, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/c/c6/Cultist-pretty.png/revision/latest?cb=20180106102518", isElite: false, isBoss: false, act_id: 1},
  {name: "Slaver blue", description: "A slaver who cast a spell who applies Weakened 2 to the player.", minHP: 45, maxHP: 50, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/f/f5/Slaver-blue-pretty.png/revision/latest?cb=20180110063542", isElite: false, isBoss: false, act_id: 1},
  {name: "Slaver red", description: "A slaver who cast 2 spells, one applies Weakened 2 to the player and other applies Entangled 1 to the player (You cannot play attacks during your next turn).", minHP: 45, maxHP: 50, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/4/4a/Slaver-red-pretty.png/revision/latest?cb=20180110063550", isElite: false, isBoss: false, act_id: 1},
  {name: "Thief", description: "A thief who steal gold each time they hit after 5 turns they try to run away, if you kill it the gold is returned to you.", minHP: 40, maxHP: 50, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/2/28/Looter-pretty.png/revision/latest?cb=20180110070043", isElite: false, isBoss: false, act_id: 1},
  {name: "Jaw Worm", description: "A worm with large jaw who just want to kill you (and probably all your family), this worm can cast a spell for gain strength and block", minHP: 40, maxHP: 45, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/d/d5/Jaw-worm-pretty.png/revision/latest?cb=20180110063613", isElite: false, isBoss: false, act_id: 1},
  {name: "Fungi Beast", description: "A dead beast with deadly fungus who apply Vulnerable when dies.", minHP: 22, maxHP: 28, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/b0/Fungi-beast-pretty.png/revision/latest?cb=20180110065656", isElite: false, isBoss: false, act_id: 1},
  {name: "Gremlin Wizard", description: "A gremlin with great power, charges an attack for 2 turns and then performs a massive attack. Sometimes the Gremlin Leader call him into fight.", minHP: 23, maxHP: 25, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/2/2d/Wizard-gremlin-pretty.png/revision/latest?cb=20180110065350", isElite: false, isBoss: false, act_id: 1},
  {name: "Mad Gremlin", description: "A gremlin who wants to FIGHT, each time is damaged his strength increase. Sometimes the Gremlin Leader call him into fight.", minHP: 20, maxHP: 21, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/9/91/Mad-gremlin-pretty.png/revision/latest?cb=20180110064810", isElite: false, isBoss: false, act_id: 1},
  {name: "Sneaky Gremlin", description: "A gremlin who only wants to stab you. Sometimes the Gremlin Leader call him into fight.", minHP: 12, maxHP: 14, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/9/93/Sneaky-gremlin-pretty.png/revision/latest?cb=20180110064518", isElite: false, isBoss: false, act_id: 1},
  {name: "Fat Gremlin", description: "A gremlin who wants to hit you, also applies weak. Sometimes the Gremlin Leader call him into fight.", minHP: 13, maxHP: 17, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/5/5e/Fat-gremlin-pretty.png/revision/latest?cb=20180110064009", isElite: false, isBoss: false, act_id: 1},
  {name: "Acid Slime (Small)", description: "A small acid slime who can apply Weak.", minHP: 8, maxHP: 12, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/f/f2/Acid-slime-s-pretty.png/revision/latest?cb=20180106102432", isElite: false, isBoss: false, act_id: 1},
  {name: "Acid Slime (Medium)", description: "A medium acid slime who can apply Weak.", minHP: 28, maxHP: 38, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/7/72/Acid-slime-m-pretty.png/revision/latest?cb=20180106102438", isElite: false, isBoss: false, act_id: 1},
  {name: "Acid Slime (Large)", description: "A large acid slime who can apply Weak. When it's life is bellow 50% will split into 2 medium Acid Slime with Acid Slime L's current HP.", minHP: 65, maxHP: 72, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/b5/Acid-slime-l-pretty.png/revision/latest?cb=20180110053826", isElite: false, isBoss: false, act_id: 1},
  {name: "Spike Slime (Small)", description: "A small spike slime who can apply Weak.", minHP: 8, maxHP: 12, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/3/37/Spiike-slime-s-pretty.png/revision/latest?cb=20180110063656", isElite: false, isBoss: false, act_id: 1},
  {name: "Spike Slime (Medium)", description: "A medium spike slime who can apply Weak.", minHP: 28, maxHP: 38, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/0/04/Spike-slime-l-pretty.png/revision/latest?cb=20180110054247", isElite: false, isBoss: false, act_id: 1},
  {name: "Spike Slime (Large)", description: "A large spike slime who can apply Weak. When it's life is bellow 50% will split into 2 medium Spike Slime with Spike Slime L's current HP.", minHP: 65, maxHP: 72, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/0/04/Spike-slime-l-pretty.png/revision/latest?cb=20180110054247", isElite: false, isBoss: false, act_id: 1},
  {name: "Green Louse", description: "A louse who can cast a spell for gain Strength, also the first time damaged cast a 3-7 block.", minHP: 10, maxHP: 15, image: "", isElite: false, isBoss: false, act_id: 1},
  {name: "Red Louse", description: "A louse who can cast a spell who applied Weak, also the first time damaged cast a 3-7 block.", minHP: 11, maxHP: 17, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/a/ae/Louse-red-pretty.png/revision/latest?cb=20180110063622", isElite: false, isBoss: false, act_id: 1},
])
