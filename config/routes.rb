Rails.application.routes.draw do
  resources :lists
  root "lists#index"
  get 'home/trash'
  get 'home/trash_all'
end
