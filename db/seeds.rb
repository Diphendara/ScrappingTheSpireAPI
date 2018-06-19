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
  {name: "Slow", description: "Whenever you play a card, the enemy takes 10% more damage for the rest of this turn."},
])

#Special cases cards
cards = Card.create([
  {image: "https://i.imgur.com/cKjsnYG.png", energyCost: 1, name: "Defend", category: 1, deck: 0, description: "Gain 5(8) Block."},
  {image: "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/0/0a/Defend.png?version=a02d3db0019a2e730d7853d6be5039ec", energyCost: 1, name: "Defend", category: 1, deck: 1, description: "Gain 5(8) Block."},
  {image: "https://i.imgur.com/mc2DxSC.png", energyCost: 1, name: "Defend", category: 1, deck: 2, description: "Gain 5(8) Block."},

  {image: "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/2/29/Bite.png?version=7bdaa0a62af97edd9bd21731cf33a4a2", energyCost: 1, name: "Bite", category: 0, deck: 3, description: "Deal 7 (8) damage. Heal 2 (3) HP."},
])

#Special cases relics
relics = Relic.create([
  {rarity: 0, name: "Cracked Core", description: "At the start of each combat, Channel 1 lightning.", image: "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/e/ed/CrackedCore.png?version=8981b71abc8d72cc640a34d161b6f995", lore: "The mysterious lifeforce which powers the Automatons within the Spire. It appears to be cracked."},
])

acts = Act.create([
  {name: "Act 1: The Exordium"},
  {name: "Act 2: The City"},
  {name: "Act 3: The Beyond"},
])

commonEnemiesActOne = Enemy.create([
  {name: "Cultist", description: "A cultist who cast a powerful spell for gain Strength each turn.", minHP: 48, maxHP: 55, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/c/c6/Cultist-pretty.png/revision/latest?cb=20180106102518", isElite: false, isBoss: false, act_id: 1},
  {name: "Slaver blue", description: "A slaver who cast a spell who applies Weakened 2 to the player.", minHP: 45, maxHP: 50, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/f/f5/Slaver-blue-pretty.png/revision/latest?cb=20180110063542", isElite: false, isBoss: false, act_id: 1},
  {name: "Slaver red", description: "A slaver who cast 2 spells, one applies Weakened 2 to the player and other applies Entangled 1 to the player (You cannot play attacks during your next turn).", minHP: 45, maxHP: 50, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/4/4a/Slaver-red-pretty.png/revision/latest?cb=20180110063550", isElite: false, isBoss: false, act_id: 1},
  {name: "Thief", description: "A thief who steal gold each time they hit after 5 turns they try to run away, if you kill it the gold is returned to you.", minHP: 40, maxHP: 50, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/2/28/Looter-pretty.png/revision/latest?cb=20180110070043", isElite: false, isBoss: false, act_id: 1},
  {name: "Jaw Worm", description: "A worm with large jaw who just want to kill you (and probably all your family), this worm can cast a spell for gain Strength and block", minHP: 40, maxHP: 45, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/d/d5/Jaw-worm-pretty.png/revision/latest?cb=20180110063613", isElite: false, isBoss: false, act_id: 1},
  {name: "Fungi Beast", description: "A dead beast with deadly fungus who apply Vulnerable when dies.", minHP: 22, maxHP: 28, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/b0/Fungi-beast-pretty.png/revision/latest?cb=20180110065656", isElite: false, isBoss: false, act_id: 1},
  {name: "Gremlin Wizard", description: "A gremlin with great power, charges an attack for 2 turns and then performs a massive attack. Sometimes the Gremlin Leader call him into fight.", minHP: 23, maxHP: 25, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/2/2d/Wizard-gremlin-pretty.png/revision/latest?cb=20180110065350", isElite: false, isBoss: false, act_id: 1},
  {name: "Mad Gremlin", description: "A gremlin who wants to FIGHT, each time is damaged his Strength increase. Sometimes the Gremlin Leader call him into fight.", minHP: 20, maxHP: 21, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/9/91/Mad-gremlin-pretty.png/revision/latest?cb=20180110064810", isElite: false, isBoss: false, act_id: 1},
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

commonEnemiesActTwo = Enemy.create([
  {name: "3 Cultist", description: "Three cultists who can cast a powerful spell for gain Strength each turn.", minHP: 48, maxHP: 55, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/c/c6/Cultist-pretty.png/revision/latest?cb=20180106102518", isElite: false, isBoss: false, act_id: 2},
  {name: "Chosen", description: "Chosen, chose for fill your deck witch useless card and applies Vulnerable, Weak and gain Strength with his skills.", minHP: 95, maxHP: 99, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/9/99/Chosen-pretty.png/revision/latest?cb=20180106102508", isElite: false, isBoss: false, act_id: 2},
  {name: "Sneko", description: "Be careful, in the first turn Sneko will try to Confuse confuse you, after that sneko try to kill you with appling Vulnerable and consecutive attacks.", minHP: 114, maxHP: 120, image: "https://i.imgur.com/xCGFZsv.png", isElite: false, isBoss: false, act_id: 2},
  {name: "Sneko", description: "Be careful, in the first turn Sneko will try to Confuse confuse you, after that sneko try to kill you with appling Vulnerable and consecutive attacks.", minHP: 114, maxHP: 120, image: "https://i.imgur.com/xCGFZsv.png", isElite: false, isBoss: false, act_id: 2},
  {name: "Snake Plant", description: "Each time you damage the snake plant it will gain 3 Block, this enemy is very strong with the the 7x3 Attacks.", minHP: 75, maxHP: 79, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/4/43/Snake-plant.png/revision/latest?cb=20180105225228", isElite: false, isBoss: false, act_id: 2},
  {name: "Centurion", description: "Always appears with Mystic. Centurion will protect Mystic with Block and then attack you.", minHP: 76, maxHP: 80, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/5/5d/Centurion.png/revision/latest?cb=20180105224854", isElite: false, isBoss: false, act_id: 2},
  {name: "Mystic", description: "Always appears with Centurion. Mystic can cast two differents spells, one for heal 16hp Centurion and himself and another one to buff Strength to Centurion and himself, and also attacks when not cast a spell.", minHP: 48, maxHP: 56, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/5/5e/Mystic.png/revision/latest?cb=20180105225205", isElite: false, isBoss: false, act_id: 2},
  {name: "Shelled Parasite", description: "A parasite who start the combat with 14 of Plated Armor and can heal himself, also can apply Frail.", minHP: 114, maxHP: 120, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/f/f8/Shelled-parasite-pretty.png/revision/latest?cb=20180110054104", isElite: false, isBoss: false, act_id: 2},
  {name: "3 Birds", description: "They will start the combat with a buff, they only take half of the damage. If they been damaged 3 times in the same turn they will stunned for one turn.", minHP: 45, maxHP: 55, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/a/a2/Byrd.png/revision/latest?cb=20180105224848", isElite: false, isBoss: false, act_id: 2},
  {name: "Spheric Guardian", description: "They will start the combat with 20 Block, 3 Artifact and Barricade (The block no expires at the start of the turn).", minHP: 20, maxHP: 20, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/9/91/Spheric-guardian-pretty.png/revision/latest?cb=20180106093658", isElite: false, isBoss: false, act_id: 2},
  {name: "Sentry", description: "This sentry want to kill you and fill you deck with useless cards, the sentry start the battle with 1 Artifact.", minHP: 35, maxHP: 41, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/5/5f/Sentry-pretty.png/revision/latest?cb=20180110054044", isElite: false, isBoss: false, act_id: 2},
])

commonEnemiesActThree = Enemy.create([
  {name: "3 Darkling", description: "This three darklings have a unique buff, is you kill one of them and is still one or more alive they revive in two turns.", minHP: 52, maxHP: 56, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/e/e2/Darkling-pretty.png/revision/latest?cb=20180110054211", isElite: false, isBoss: false, act_id: 3},
  {name: "Orb Walker", description: "At the end of Orb Walker's turn, the Orb Walker gains 3 Strength, also have a attack who add a Burn into de discard pile.", minHP: 90, maxHP: 95, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/e/ee/Orb-walker-pretty.png/revision/latest?cb=20180110054031", isElite: false, isBoss: false, act_id: 3},
  {name: "Repulsor", description: "The repulsor just do two things, add 2 Dazed in your draw pile and attack.", minHP: 30, maxHP: 35, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/c/ce/Repulsor-pretty.png/revision/latest?cb=20180110053951", isElite: false, isBoss: false, act_id: 3},
  {name: "Exploder", description: "At the 3º turn since the battle beggins explode and dedal 30 damage, also attacks.", minHP: 48, maxHP: 55, image: "", isElite: false, isBoss: false, act_id: 3},
  {name: "Spiker", description: "Can cast a spell who increments his Thorns in two, this enemy start the battle with 3 Thorns.", minHP: 48, maxHP: 55, image: "", isElite: false, isBoss: false, act_id: 3},
  {name: "The Maw", description: "The Maw can cast a spell who applies 3 vulnerable and 3 frail at the same time, also have other who buff himself with 3 Strength.", minHP: 300, maxHP: 300, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/f/fa/The-maw-pretty.png/revision/latest?cb=20180110054128", isElite: false, isBoss: false, act_id: 3},
])

eliteEnemiesActOne = Enemy.create([
  {name: "Gremlin Nob", description: "A big gremlin who gain Strength each time you use a skill, be carefull.", minHP: 82, maxHP: 82, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/3/3b/Gremlin-nob-pretty.png/revision/latest?cb=20180110071016", isElite: true, isBoss: false, act_id: 1},
  {name: "3 Sentries", description: "This 3 sentries want to kill you and fill you deck with useless cards, each sentry start the battle with 1 Artifact.", minHP: 35, maxHP: 41, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/5/5f/Sentry-pretty.png/revision/latest?cb=20180110054044", isElite: true, isBoss: false, act_id: 1},
  {name: "Lagavulin", description: "Lagavulin is meek until you wake him. It starts sleeped with 8 Block, when you hurt him he wakes up.", minHP: 110, maxHP: 110, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/a/af/Lagavulin-awake-pretty.png/revision/latest?cb=20180110054015", isElite: true, isBoss: false, act_id: 1},
])

eliteEnemiesActTwo = Enemy.create([
  {name: "Book of Stabbing", description: "A very strong Elite, it will do 6xN attacks where N is increase for turns. Each time the Book of Stabbing deals unblocked damage to you add a Wound to your discard pile.", minHP: 160, maxHP: 160, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/b9/Book-of-stabbing-pretty.png/revision/latest?cb=20180106102445", isElite: true, isBoss: false, act_id: 2},
  {name: "Slaver Boss", description: "This slaver will appears with one blue and one red Slavers. Slaver Boss can buff with Block and Strength all the enemies in the combat.", minHP: 64, maxHP: 64, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/2/26/Slaver-leader-pretty.png/revision/latest?cb=20180110054116", isElite: true, isBoss: false, act_id: 2},
  {name: "Gremlin Leader", description: "The gremlin will appears with other gremblins (not Gremlin Nob) and call them to the battle once you kill them. Also can attack and buff all the gemlins (and himself) with 3 Strength and 6 Block to the gemlins.", minHP: 160, maxHP: 160, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/bc/Gremlin-leader.png/revision/latest?cb=20180105225018", isElite: true, isBoss: false, act_id: 2},
])

eliteEnemiesActThree = Enemy.create([
  {name: "2 Orb Walker", description: "At the end of Orb Walker's turn, the Orb Walker gains 3 Strength, also have a attack who add a Burn into de discard pile.", minHP: 90, maxHP: 95, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/e/ee/Orb-walker-pretty.png/revision/latest?cb=20180110054031", isElite: false, isBoss: false, act_id: 3},
  {name: "Nemesis", description: "Nemesis can cast a spell who add 3 Burns to the discard pile, attacks with a 6x3 and 40x1.", minHP: 175, maxHP: 175, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/bd/Screenshot_%2813%29.png/revision/latest?cb=20180128103951", isElite: true, isBoss: false, act_id: 3},
  {name: "Giant Head", description: "Has Slow, every 5 turns he deal one attack who deals 30+5, 10, 15...each time this attack is done.", minHP: 500, maxHP: 500, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/0/0c/Giant-head-pretty.png/revision/latest?cb=20180110054002", isElite: true, isBoss: false, act_id: 3},
])

bossEnemiesActOne = Enemy.create([
  {name: "Slime Boss", description: "A big slime who split in one spike slime and one acid slime when it have less than 50% of the HP.", minHP: 140, maxHP: 140, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/f/f1/Slime_Boss.png/revision/latest?cb=20171204181734", isElite: false, isBoss: true, act_id: 1},
  {name: "The guardian", description: "Starts in Attack mode (Left) and Mode Change, when change automatically wins 20 Block, Defensive mode casts a Thorn spell the first turn, then attacks and finally makes an 8x2 and returns to an attack and replay mode, but now the need for damage to change to defensive mode is greater.", minHP: 220, maxHP: 220, image: "https://i.imgur.com/eRPdIzh.png", isElite: false, isBoss: true, act_id: 1},
  {name: "Hexaghost", description: "Hexaghost has a 6 cicle attack, in the 6º turn hexaghost will do a (10% current character life)x6 attack, in other turns add burns to the discard pile, do normal attacks.", minHP: 250, maxHP: 250, image: "https://i.imgur.com/AK8hET0.png", isElite: false, isBoss: true, act_id: 1},
])

bossEnemiesActTwo = Enemy.create([
  {name: "Bronze Automaton", description: "Starts with 3 Artifact. At the 2º turn invoque 2 minions who steals a card from your deck, also the Bronze Automaton has the most powerfull attack in the game, the hyper beam.", minHP: 300, maxHP: 300, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/e/e7/Bronze-automoton-pretty.png/revision/latest?cb=20180110053857", isElite: false, isBoss: true, act_id: 2},
  {name: "The Champ", description: "The Champ use powerfull attacks at the same time cast spells who apply Weak and Vulnerable. When the Champ gets less than the 50% of it's HP loses all negative debuffs and his attacks are more powerfull.", minHP: 420, maxHP: 420, image: "https://wikiwiki.jp/slaythespire/?plugin=ref&page=%E3%83%81%E3%83%A3%E3%83%B3%E3%83%97&src=%E3%83%81%E3%83%A3%E3%83%B3%E3%83%97.PNG&rev=c2116d3ab1448eb45f4678c946434a10", isElite: false, isBoss: true, act_id: 2},
  {name: "The Collector", description: "The fight will always start off with The Collector summoning 2 Torch Head minions with 38-40 HP. The Collector can cast a spell who apply 3 Vulnerable and Frail to the player, also when the minions die The collector can invoque new ones.", minHP: 282, maxHP: 282, image: "https://static.giga.de/wp-content/uploads/2018/01/slay-the-spire-bosse-the-collector.jpg", isElite: false, isBoss: true, act_id: 2},
])

bossEnemiesActThree = Enemy.create([
  {name: "Awakened One", description: "Has 2 phases, the first start with 2 cultists and regenerate 10hp each turn. When the HP of the Awakened One reach 1hp it will go to phase 2, full heal himself and deal more damage with the attacks.", minHP: 300, maxHP: 300, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/e/ee/Orb-walker-pretty.png/revision/latest?cb=20180110054031", isElite: false, isBoss: true, act_id: 3},
  {name: "The Time Eater", description: "Every time you play a total of 12 cards (carrying over between turns), your turn is immediately ended. The Time Eater gains 2 Strength, then takes its turn.", minHP: 456, maxHP: 456, image: "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/bd/Screenshot_%2813%29.png/revision/latest?cb=20180128103951", isElite: false, isBoss: true, act_id: 3},
  {name: "Donu and Deca", description: "Docu and Deca start the game with 2 Artifacts. This gigant donuts are besties, one applies 3 Strength to both, other applies 16 Block to both, but them do something the same, the annoying 10x2 attack.", minHP: 250, maxHP: 250, image: "https://static.giga.de/wp-content/uploads/2018/01/slay-the-spire-bosse-donu-deca.jpg", isElite: false, isBoss: true, act_id: 3},
])
