require 'rails_helper'

RSpec.describe Keyword, type: :model do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
end
