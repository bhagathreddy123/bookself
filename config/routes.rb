Rails.application.routes.draw do
  resources :books do
    collection do 
      delete :bulk_delete_books
    end
  end   
  root "books#index"
end
