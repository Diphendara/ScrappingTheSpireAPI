require 'rails_helper'

RSpec.describe Card, type: :model do
  it { should have_and_belong_to_many(:keywords) }

  it { should validate_presence_of(:energyCost) }
  it { should validate_presence_of(:type) }
  it { should validate_presence_of(:deck) }

end
