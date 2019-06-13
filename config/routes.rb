Rails.application.routes.draw do
  
  resources :users
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      post "/answers" => 'answers#get'
    end
  end

  namespace :admin do
    root to: "answers#index"
    resources :answers
  end

  root to: 'client#index'

  get '/use_cases', to: 'client#use_cases'
end
