require 'rails_helper'

RSpec.describe Act, type: :model do
    it { should validate_presence_of(:name) }
end
