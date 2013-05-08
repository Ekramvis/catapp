CatProject::Application.routes.draw do
  root to: 'cats#index'
  resources :cats
end
