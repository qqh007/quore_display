Rails.application.routes.draw do


  #resources :likes
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  get '/users/list_questions', to: 'questions#list_my_questions'
  get '/users/account', to: 'users#account'
  get '/users/edit_info', to: 'users#update'
  resources :questions do
    resources :answers do
      resources :comments
    end
  end

  resources :answers do
    resources :likes
  end

  root :to => 'questions#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
