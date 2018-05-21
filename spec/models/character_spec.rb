require "rails_helper"

RSpec.describe Character, type: :model do
  it { should belong_to(:relic) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:hp) }
  it { should validate_presence_of(:gold) }
  it { should validate_presence_of(:relic_id) }
  it { should validate_presence_of(:description) }
end
