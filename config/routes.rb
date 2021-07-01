Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles, only: [:index, :show, :new, :create]
  
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article

  patch 'articles/:id', to: 'articles#update'
  
  # can also simply add edit and update actions to the resources call in the routes file
  # resources :articles, only: [:index, :show, :new, :create, :edit, :update] 
end
