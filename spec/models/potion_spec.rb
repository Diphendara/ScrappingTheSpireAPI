require 'rails_helper'

RSpec.describe Potion, type: :model do
  it { should have_and_belong_to_many(:keywords) }
end
