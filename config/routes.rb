Rails.application.routes.draw do
  resources :topics do
    #we pass resources :posts to the resources :topics block. This nests the post routes under the topic routes.
    resources :posts, except: [:index]
    resources :sponsored_post
  end

  get 'about' => 'welcome#about'
  root 'welcome#index'
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
