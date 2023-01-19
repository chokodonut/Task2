Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books,only: [:create, :index, :show, :destroy, :edit, :update]
  root to: 'homes#top'
 
end
