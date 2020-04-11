Rails.application.routes.draw do
  resources :memos
  resources :tasks
  root "tasks#index"
end
