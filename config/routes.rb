Rails.application.routes.draw do
  root "books#index"

  resources :books do
    resources :borrowings, only: %i[new create]
    member do
      get :return_book, to: "borrowings#return_book"
      delete :destroy
    end
  end

  resources :borrowings do
    member do
      get :return_book, to: "borrowings#return_book"
    end
  end
    # Add this line to allow `/borrowings`do
  resources :borrowers do
    member do
      get :return_book, to: "borrowings#return_book"
    end
  end
    # Add this to define borrowers_path
  #, only: [:index, :show] 
end
