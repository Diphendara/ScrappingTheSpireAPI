require 'rails_helper'

RSpec.describe Relic, type: :model do
  it { should have_and_belong_to_many(:keywords) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:rarity) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:lore) }
end
