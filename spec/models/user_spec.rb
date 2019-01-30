require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) { create(:user) }
  
  it 'creates' do
    expect(user).to be_present
  end
end