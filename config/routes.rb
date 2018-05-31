Rails.application.routes.draw do
  resources :advertisements
  resources :posts
  get 'about' => 'welcome#about'
  get 'advertisements' => 'welcome#advertisements'
  get 'newads' => 'advertisements#new'
  
  root 'welcome#index'
  
end
