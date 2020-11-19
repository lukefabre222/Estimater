Rails.application.routes.draw do
  devise_for :users
  root 'top_page#home'
  devise_scope :user do
    get 'users/:id' , to: 'users/registrations#my_page', as: :my_page
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
