require 'rails_helper'

RSpec.describe Card, type: :model do
  it { should have_and_belong_to_many(:keywords) }
end
