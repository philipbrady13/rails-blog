require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { create(:user) }
  let(:subject) { JSON.parse(response.body).deep_symbolize_keys }

  it 'will show a user' do
    get :show, params: { user_id: user.id }, as: :json
    expect(response).to be_success
  end

  it 'will create a user' do
    post :create, params: { name: 'phil', email: 'phil@phil.com', password: 'mediazilla', password_confirmation: 'mediazilla' }
    expect(response).to be_success
    expect(subject[:user][:email]).to eq('phil@phil.com')
  end
end
