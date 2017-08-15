Rails.application.routes.draw do
  resources :topics do
    #we pass resources :posts to the resources :topics block. This nests the post routes under the topic routes.
    resources :posts, except: [:index]
  end

  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
    resources :favorites, only: [:create, :destroy]
    
    post '/up-vote' => 'votes#up_vote', as: :up_vote
    post '/down-vote' => 'votes#down_vote', as: :down_vote
  end

  resources :users, only: [:new, :create, :show]

  resources :sessions, only: [:new, :create, :destroy]

  get 'about' => 'welcome#about'
  root 'welcome#index'
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
