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
