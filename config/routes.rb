Rails.application.routes.draw do

  resources :users do 
    resources :documents
    resources :qualifications    
end
resources :subjects
resources :tutorials
resources :places


end
