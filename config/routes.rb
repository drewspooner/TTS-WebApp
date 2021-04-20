Rails.application.routes.draw do

  
  get 'hello_world/index'
  root 'books#index'

  resources :books
  resources :books do
    member do
      get :delete
    end
  end

  #get 'books/index'
  #get 'books/show'
  #get 'books/new'
  #get 'books/edit'
  #get 'books/delete'
  #get 'demo/index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
