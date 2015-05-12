Rails.application.routes.draw do

 root 'views#index'

  namespace :api, defaults: {format: 'json'}  do
    namespace :v1 do
    get '/sneakers/search' => 'sneakers#search'
   resources :sneakers



end

end
