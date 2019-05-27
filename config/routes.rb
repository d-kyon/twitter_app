Rails.application.routes.draw do
  root 'home#show'
  get 'home/index' => 'home#index'
  get 'home/show' => 'home#show'
  post 'home/create' =>'home#create'
  get 'home/:id/edit' => 'home#edit'
  put 'home/:id/update' =>'home#update'
  delete 'home/:id/destroy' =>'home#destroy'
  put 'home/:id/favorite' => 'home#favorite'
end
