Rails.application.routes.draw do
  get 'advertisement/index'

  get 'advertisement/show'

  get 'advertisement/new'

  get 'advertisement/create'

  resources :posts

  get 'about' => 'welcome#about'
  root 'welcome#index'
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
