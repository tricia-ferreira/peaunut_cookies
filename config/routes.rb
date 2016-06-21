Rails.application.routes.draw do
  
  resources :cookies do
    resources :reviews, param: :slug do
      resources :comments
    end
  end

  mount ActionCable.server => '/cable'
end
