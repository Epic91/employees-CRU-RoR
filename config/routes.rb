Rails.application.routes.draw do
  resources :employees, only: [:index, :new, :create, :show, :edit, :update]
end
