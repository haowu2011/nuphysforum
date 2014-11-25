Rails.application.routes.draw do
   
  get "/" => "categories#index"
  get "/login" => "sessions#new"
  get "/sessions/create" => "sessions#create"
  get "/logout" => "sessions#destroy"
  
  # Routes for the Comment resource:
  # CREATE
  get '/new_comment' => 'comments#new'
  get '/create_comment' => 'comments#create'

  # READ
  get '/comments' => 'comments#index'
  get '/comments/:id' => 'comments#show'

  # UPDATE
  get '/comments/:id/edit' => 'comments#edit'
  get '/comments/:id/update' => 'comments#update'

  # DELETE
  get '/comments/:id/destroy' => 'comments#destroy'
  #------------------------------

  # Routes for the User_profile resource:
  # CREATE
  get '/new_user_profile' => 'user_profiles#new'
  get '/create_user_profile' => 'user_profiles#create'

  # READ
  get '/user_profiles' => 'user_profiles#index'
  get '/user_profiles/:id' => 'user_profiles#show'

  # UPDATE
  get '/user_profiles/:id/edit' => 'user_profiles#edit'
  get '/user_profiles/:id/update' => 'user_profiles#update'

  # DELETE
  get '/user_profiles/:id/destroy' => 'user_profiles#destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/new_user' => 'users#new'
  get '/create_user' => 'users#create'

  # READ
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'

  # UPDATE
  get '/users/:id/edit' => 'users#edit'
  get '/users/:id/update' => 'users#update'

  # DELETE
  get '/users/:id/destroy' => 'users#destroy'
  #------------------------------

  # Routes for the Category resource:
  # CREATE
  get '/new_category' => 'categories#new'
  get '/create_category' => 'categories#create'

  # READ
  get '/categories' => 'categories#index'
  get '/categories/:id' => 'categories#show'

  # UPDATE
  get '/categories/:id/edit' => 'categories#edit'
  get '/categories/:id/update' => 'categories#update'

  # DELETE
  get '/categories/:id/destroy' => 'categories#destroy'
  #------------------------------

  # Routes for the Post resource:
  # CREATE
  get '/new_post' => 'posts#new'
  get '/create_post' => 'posts#create'

  # READ
  get '/posts' => 'posts#index'
  get '/posts/:id' => 'posts#show'

  # UPDATE
  get '/posts/:id/edit' => 'posts#edit'
  get '/posts/:id/update' => 'posts#update'

  # DELETE
  get '/posts/:id/destroy' => 'posts#destroy'
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
