Rails.application.routes.draw do
  scope :api do
    resources :users, except: [:create]
    resources :feedbacks
    resources :requests
    post 'requests/:id/accept', to: 'requests#accept'
    post 'requests/:id/decline', to: 'requests#decline'
    post 'register', to: 'auth#register'
    post 'login', to: 'auth#login'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
