Rails.application.routes.draw do
  resources :users
  resources :books do
    collection do 
      delete :bulk_delete_books
    end
    patch :update_book_name, on: :member
  end   
  root "books#index"
end
