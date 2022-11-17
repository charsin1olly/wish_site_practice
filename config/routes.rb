Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/wish_list' ,to:'wish_list#home'
  get '/new_wish' ,to:'wish_list#new_wish'
  post '/create_wish' ,to: 'wish_list#create_wish'
  get '/wish_card' , to: 'wish_list#wish_card'

end
