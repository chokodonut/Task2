Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books,only: [:create, :index, :show, :destroy, :edit, :update]
  root to: 'homes#top'
  
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  pastch 'books/:id' => 'books#update', as: 'update_list'
end
