Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Gameboard routes
  get '/gameboards', to: 'gameboards#index'
  get '/gameboards/new', to: 'gameboards#new', as: 'new_gameboard'
  post '/gameboards/new', to: 'gameboards#create'
  get '/gameboards/:id', to: 'gameboards#show', as: 'gameboard'
  get '/gameboards/:id/edit', to: 'gameboards#edit', as: 'edit_gameboard'
  patch '/gameboards/:id', to: 'gameboards#update'
  delete '/gameboards/:id', to: 'gameboards#delete'

  # Pieces routes
  get '/pieces', to: 'pieces#index'
  get '/pieces/new', to: 'pieces#new', as: 'new_piece'
  post '/pieces', to: 'pieces#create', as: 'create_piece'
  get '/pieces/:id', to: 'pieces#show', as: 'piece'
  get '/pieces/:id/edit', to: 'pieces#edit', as: 'edit_piece'
  patch '/pieces/:id', to: 'pieces#update'
  delete '/pieces/:id', to: 'pieces#delete'

end
