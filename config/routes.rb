Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  root    'tweets#index'
  get     'tweets'       => 'tweets#index'
  get     'foods'        => 'foods#index'
  get     'drinks'       => 'drinks#index'
  get     'access'       => 'access#access'
  get     'tweets/new'   => 'tweets#new'
  post    'tweets'       => 'tweets#create'
  get     'users'        =>  'users#show'
  get     'foods/new'    =>  'foods#new'
  post    'foods'        =>  'foods#create'
  get     'drinks/new'   =>  'drinks#new'
  post    'drinks'       =>  'drinks#create'
  get     'tweets/show'  =>  'tweets#show'
  get     'foods/show'   =>  'foods#show'
  get     'drinks/show'  =>  'drinks#show'
  delete  'tweets/:id'   =>  'tweets#destroy'
  delete  'foods/:id'    =>  'foods#destroy'
  delete  'drinks/:id'   =>  'drinks#destroy'
  get     'tweets/:id/edit'  =>  'tweets#edit'
  get     'foods/:id/edit'   =>  'foods#edit'
  get     'drinks/:id/edit'  =>  'drinks#edit'
  patch   'tweets/:id'  =>  'tweets#update'
  patch   'foods/:id'  =>   'foods#update'
  patch   'drinks/:id'  =>  'drinks#update'

end
