Rails.application.routes.draw do
  scope :users do
    get ':user_id', to: 'users#show'
    post '', to: 'users#create'
  end
end
