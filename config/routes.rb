Rails.application.routes.draw do

  resources :users do 
    resources :documents
    resources :qualifications    
end
resources :subjects
resources :tutorials
resources :places

post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
  
end
