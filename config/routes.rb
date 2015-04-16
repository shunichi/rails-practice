Rails.application.routes.draw do

  resources :posts, only: %i(new create update), module: 'mine'

  resources :users, only: %i(index show) do
    resources :posts, only: %i(index show)
  end


  get '/auth/github/callback', to: 'sessions#create'
  get '/sign_in', to: 'sessions#new'
  delete '/sign_out', to: 'sessions#destroy'

  root 'home#index'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
