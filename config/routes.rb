Rails.application.routes.draw do
  resources :lists
  root "lists#index"
  get 'home/trash_em'
end
