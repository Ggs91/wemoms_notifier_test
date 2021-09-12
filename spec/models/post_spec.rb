require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'associations' do
    it { should belong_to(:user) }
  end

  context 'validations' do
    it { should validate_presence_of(:description).with_message('Description must be present') }
  end
end
