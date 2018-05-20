# config/routes.rb
Rails.application.routes.draw do
  resources :relics do
    resources :items
  end
end
