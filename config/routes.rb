Rails.application.routes.draw do
  resources :authors
  resources :rooms do
    resources :messages
  end
  root "books#list"

  devise_for :users, controllers: {
    sessions: 'users/sessions', registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'users', to: 'devise/sessions#new'
  end
  get "/books/list", to: "books#list"
  get '/books/new', to: "books#new"
  post '/books/create'
  patch '/books/update'
  get '/books/list'
  get '/books/show'
  get '/books/edit'
  get '/books/delete'
  get '/books/update'
  get '/books/show_subjects'
  get 'user/:id', to: 'users#show', as: 'user'
end