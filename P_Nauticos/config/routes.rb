Rails.application.routes.draw do
  
#  root :to => 'catalog#index'
  root 'admin/brand#index'

  get 'about' => 'about#index'
  get 'admin/brand' => 'admin/brand#index'
  get 'admin/product' => 'admin/product#index'

  get 'admin/brand/new'
  post 'admin/brand/create'
  get 'admin/brand/edit'
  post 'admin/brand/update'
  post 'admin/brand/destroy'
  get 'admin/brand/show'
  get 'admin/brand/show/:id' => 'admin/brand#show'
  get 'admin/brand/index'

  get 'admin/product/new'
  post 'admin/product/create'
  get 'admin/product/edit'
  post 'admin/product/update'
  post 'admin/product/destroy'
  get 'admin/product/show'
  get 'admin/product/index'
  get 'admin/product/load_data'

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
