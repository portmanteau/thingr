Rails.application.routes.draw do
  get 'index/index'

  resources :items
end
