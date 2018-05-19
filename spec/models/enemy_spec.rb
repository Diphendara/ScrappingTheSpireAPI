require 'rails_helper'

RSpec.describe Enemy, type: :model do
  it { should belong_to(:act) }

  it { should validate_presence_of(:minHP) }
  it { should validate_presence_of(:maxHP) }
  it { should validate_presence_of(:appearance) }
  it { should validate_presence_of(:isElite) }
  it { should validate_presence_of(:isBoss) }
  it { should validate_presence_of(:act_id) }
end
