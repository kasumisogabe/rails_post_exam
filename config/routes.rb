Rails.application.routes.draw do
  # resourcesメソッドを使用してルーティングを設定
  resources :posts do
    collection do
      post :confirm
    end
  end
end
