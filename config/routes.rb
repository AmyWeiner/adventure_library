AdventureLibrary::Application.routes.draw do
  get '/libraries', to: 'libraries#index', as: :libraries
  
  root to: 'libraries#index'

  resources :libraries
  resources :adventures do
    resources :pages
  end
end
