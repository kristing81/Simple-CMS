SimpleCms::Application.routes.draw do

  root 'public#index'

  get 'show/:permalink', :to =>'public#show'

  get "admin", :to => "access#index"

  #resources :users
  match ':controller(/:action(/:id))', :via => [:get, :post]

  # resources :subjects do
  #   member do
  #     get :delete
  #   end
  #   resources :pages do
  #     member do
  #       get :delete
  #     end
  #     resources :sections do
  #       member do
  #         get :delete
  #       end
  #     end
  #   end
   # end
end