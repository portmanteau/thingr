Rails.application.routes.draw do
  get 'index/index'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root to: "high_voltage/pages#show", id: "home"
  resources :items
end
