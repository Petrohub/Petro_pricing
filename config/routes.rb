Rails.application.routes.draw do
  # devise_for :users
  devise_for :retailers
  devise_for :suppliers
   root 'pages#home'
end
