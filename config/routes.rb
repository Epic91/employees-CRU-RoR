Rails.application.routes.draw do
  get 'employees/index'
  get 'employees/new'
  get 'employees/create'
  get 'employees/show'
  get 'employees/edit'
  get 'employees/update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
