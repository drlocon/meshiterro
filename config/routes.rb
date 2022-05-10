Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "homes#top"
  get "/homes/about" => "homes#about", as: "about"
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    # post_commnets_controllerの名前ミスしている為、ルーティングもコントローラ名に合わせて変更
    resources :post_commnets, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
end