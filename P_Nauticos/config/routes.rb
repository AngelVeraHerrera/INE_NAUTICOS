Rails.application.routes.draw do


  get 'password_resets/new'
  get 'password_resets/edit/:id' => 'password_resets#edit'
  post 'password_resets/update/:id' => 'password_resets#update'
  get 'password_resets/create'
  post 'password_resets/create'


  get 'catalog/search'



  get 'admin/order' => 'admin/order#index'
  get 'admin/order/index' => 'admin/order#index'
  get 'admin/order/index/:id' => 'admin/order#index'
  get 'admin/order/show/:id' => 'admin/order#show'
  post 'admin/order/close'

  get 'checkout' => 'checkout#index'
  get 'checkout/index'
  post 'checkout/submit_order'
  get 'checkout/thank_you'

  get 'user_sessions/new'
  get 'user_sessions/create' # for showing fallido login screen after restarting web server
  post 'user_sessions/create'
  get 'user_sessions/destroy'

  get 'user/new'
  post 'user/create'
  get 'user/show'
  get 'user/show/:id' => 'user#show'
  get 'user/edit'
  post 'user/update'

  #Rutas del Carrito
 get 'cart/add'
  post 'cart/add'
  get 'cart/remove'
  post 'cart/remove'
  get 'cart/clear'
  post 'cart/clear'

root 'catalog#index'

 #Rutas del Catálogo
 get 'catalog' => 'catalog#index'
 get 'catalog/index'
 get 'catalog/show/:id' => 'catalog#show'
 post 'catalog/search'
 get 'catalog/latest'

 #Rutas de Conócenos
 get 'about' => 'about#index'

 #Rutas de las Marcas
 get 'admin/brand' => 'admin/brand#index'
 get 'admin/brand/new'
 post 'admin/brand/create'
 get 'admin/brand/edit'
 post 'admin/brand/update'
 post 'admin/brand/destroy'
 get 'admin/brand/show'
 get 'admin/brand/show/:id' => 'admin/brand#show'
 get 'admin/brand/index'

 #Rutas del Producto
 get 'admin/product' => 'admin/product#index'
 get 'admin/product/new'
 post 'admin/product/create'
 get 'admin/product/edit'
 post 'admin/product/update'
 post 'admin/product/destroy'
 get 'admin/product/show/:id' => 'admin/product#show'
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
