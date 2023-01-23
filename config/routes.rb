Rails.application.routes.draw do
  # get 'posts/index'
  get '/posts', to: 'posts#index'
  end
