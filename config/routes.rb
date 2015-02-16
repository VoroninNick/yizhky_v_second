Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  # Section for user dashboard START
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }, skip: [:sessions, :passwords, :confirmations, :registrations]
  devise_scope :user do

    # session handling
    get     '/my/dashboard/login'  => 'devise/sessions#new',     as: 'new_user_session'
    post    '/my/dashboard/login'  => 'devise/sessions#create',  as: 'user_session'
    delete  '/my/dashboard/logout' => 'devise/sessions#destroy', as: 'destroy_user_session'

    # joining
    get   '/my/dashboard/join' => 'devise/registrations#new',    as: 'new_user_registration'
    post  '/my/dashboard/join' => 'devise/registrations#create', as: 'user_registration'
    put   '/my/dashboard/join' => 'devise/registrations#update'
    delete '/my/dashboard/join' => 'devise/registrations#destroy'

    scope '/my/dashboard/account' do
      # password reset
      get   '/reset-password'        => 'devise/passwords#new',    as: 'new_user_password'
      put   '/reset-password'        => 'devise/passwords#update', as: 'user_password'
      post  '/reset-password'        => 'devise/passwords#create'
      get   '/reset-password/change' => 'devise/passwords#edit',   as: 'edit_user_password'

      # confirmation
      get   '/confirm'        => 'devise/confirmations#show',   as: 'user_confirmation'
      post  '/confirm'        => 'devise/confirmations#create'
      get   '/confirm/resend' => 'devise/confirmations#new',    as: 'new_user_confirmation'

      # settings & cancellation
      get '/cancel'   => 'devise/registrations#cancel', as: 'cancel_user_registration'
      get '/settings' => 'devise/registrations#edit',   as: 'edit_user_registration'
      put '/settings' => 'devise/registrations#update'

      # account deletion
      delete '' => 'devise/registrations#destroy'#, as: 'delete_user_registration'
    end
  end
  # Section for user dashboard END

  get '/my', to: redirect('/my/dashboard'), as: 'my_index'
  get '/my/dashboard', to: 'user_cabinet#index', as: 'user_cabinet_index'
  get '/my/dashboard/history', to: 'user_cabinet#history', as: 'user_cabinet_history'
  get '/my/dashboard/subscribe', to: 'user_cabinet#subscribe', as: 'user_cabinet_subscribe'
  get '/my/dashboard/feedback', to: 'user_cabinet#feedback', as: 'user_cabinet_feedback'

  # Restorans START
  get '/my/dashboard/restorans', to: 'restoran#index', as: 'my_restoran_index'
  get '/my/dashboard/restorans/new', to: 'restoran#new', as: 'my_restoran_new'
  post '/my/dashboard/restorans', to: 'restoran#create', as: 'my_restoran_create'
  get '/my/dashboard/restorans/:id/edit', to: 'restoran#edit', as: 'my_restoran_edit'
  delete '/my/dashboard/restorans/:id', to: 'restoran#destroy', as: 'my_restoran_delete'
  put '/my/dashboard/restorans/:id', to: 'restoran#update', as: 'my_restoran_update'
  patch '/my/dashboard/restorans/:id', to: 'restoran#update', as: 'my_restoran_path_update'
  # Restorans END

  # Catalogs START
  get '/my/dashboard/catalogs', to: 'catalog#index', as: 'my_catalog_index'
  get '/my/dashboard/catalogs/new', to: 'catalog#new', as: 'my_catalog_new'
  post '/my/dashboard/catalogs', to: 'catalog#create', as: 'my_catalog_create'
  get '/my/dashboard/catalogs/:id/edit', to: 'catalog#edit', as: 'my_catalog_edit'
  delete '/my/dashboard/catalogs/:id', to: 'catalog#destroy', as: 'my_catalog_delete'
  put '/my/dashboard/catalogs/:id', to: 'catalog#update', as: 'my_catalog_update'
  patch '/my/dashboard/catalogs/:id', to: 'catalog#update', as: 'my_catalog_path_update'
  # Catalogs END

  # Products START
  get '/my/dashboard/products', to: 'product#index', as: 'my_product_index'
  get '/my/dashboard/products/new', to: 'product#new', as: 'my_product_new'
  post '/my/dashboard/products', to: 'product#create', as: 'my_product_create'
  get '/my/dashboard/products/:id/edit', to: 'product#edit', as: 'my_product_edit'
  delete '/my/dashboard/products/:id', to: 'product#destroy', as: 'my_product_delete'
  put '/my/dashboard/products/:id', to: 'product#update', as: 'my_product_update'
  patch '/my/dashboard/products/:id', to: 'product#update', as: 'my_product_path_update'
  # Products END

  # Orders START
  get '/my/dashboard/orders', to: 'order#index', as: 'my_order_index'
  #get '/my/dashboard/orders/new', to: 'order#new', as: 'my_order_new'
  #post '/my/dashboard/orders', to: 'order#create', as: 'my_order_create'
  get '/my/dashboard/orders/:id/edit', to: 'order#edit', as: 'my_order_edit'
  delete '/my/dashboard/orders/:id', to: 'order#destroy', as: 'my_order_delete'
  put '/my/dashboard/orders/:id', to: 'order#update', as: 'my_order_update'
  patch '/my/dashboard/orders/:id', to: 'order#update', as: 'my_order_path_update'


  # get '/order', to: 'page#order', as: 'order_index'
  # get '/order/create', to: 'page#new_order', as: 'order_new'
  # post '/order/submit', to: 'page#submit_order', as: 'order_submit'


  get '/restoran/:id', to: 'page#restorans_item', as: 'restorans_item'
  get '/restoran/:restoran_id/:id', to: 'page#catalogs_item', as: 'products_by_category'

  # Orders END
  # get '/golovna' => 'page#golovna'
  # get '/restaurant/:url'
  get '/:url' => 'page#about', as: 'restaurant_about'
  get '/:restaurant/all-menu' => 'page#catalog', as: 'restaurant_all_menu'
  get '/:restaurant/:catalog' => 'page#catalog', as: 'restaurant_catalog'

  root 'page#golovna'
end
