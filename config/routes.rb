Rails.application.routes.draw do
  resources :heroes, only: [:index, :show]
  resources :powers, only: [:index, :show]
  patch '/powers/:id', to: 'powers#patch', as: 'update_power'
  post '/hero_powers', to: 'hero_powers#create', as: 'create_hero_power'
end
