Rails.application.routes.draw do
  root to: 'blog_trains#index'
  resources :blog_trains do
    collection do
      post :confirm
    end
  end
end

