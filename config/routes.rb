Rails.application.routes.draw do
  
  resources :cookies do
    resources :reviews, param: :slug
  end

  mount ActionCable.server => '/cable'
end
