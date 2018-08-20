Rails.application.routes.draw do
  get 'show/new'
  get 'show/edit'
  resources :topics do
    resources :posts, except: [:index]
    resources :sponsored_posts
  end

  get 'about' => 'welcome#about'
  root 'welcome#index'
end
