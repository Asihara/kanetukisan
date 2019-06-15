Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  get '/kasitumon' => 'co#home'
  
  post '/kasitumon' => 'co#create'
  patch '/kasitumon' => 'co#update'
  
  get '/ka' => 'co#home1'
  
  #get '/kasitumon/:id/edit' => 'co#edit'
  #patch '/kasitumon/:id' => 'co#update'
  #delete '/kasitumon/:id' => 'co#destroy'
  
end
