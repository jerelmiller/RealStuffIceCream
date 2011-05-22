ActionController::Routing::Routes.draw do |map|

  map.with_options :conditions => { :subdomain => 'admin' } do |admin|
    admin.root :controller => 'admin/user_sessions', :action => 'new'
    admin.resources :flavors, :controller => 'admin/flavors'
    admin.resources :users, :controller => 'admin/users'
    admin.resources :flavors, :controller => 'admin/flavors'
    admin.resources :articles, :controller => 'admin/articles'
    admin.resources :events, :controller => 'admin/events'
    admin.resources :user_sessions, :controller => 'admin/user_sessions'
    admin.logout 'logout', :controller => 'admin/user_sessions', :action => "destroy"
    admin.home 'home', :controller => 'admin/home'
  end
  
  map.resources :aboutus
  map.root :controller => 'general_info'
  map.general_info 'general_info', :controller => 'general_info'
  map.news 'news', :controller => 'articles', :action => "index"
  map.events 'events', :controller => 'events', :action => "index"
  map.home 'home', :controller => 'general_info'
  map.media 'media', :controller => 'media'
  
  map.namespace :services do |service|
    service.catering 'catering', :controller => 'catering'
    service.ordering 'ordering', :controller => 'ordering'
    service.root :controller => 'catering'
  end
  
  map.namespace :products do |product|
    product.ice_cream 'ice_cream', :controller => 'ice_cream'
    product.crepes 'crepes', :controller => 'crepes'
    product.others 'others', :controller => 'others'
    product.real_stuffcakes 'real_stuffcakes', :controller => 'real_stuffcakes'
    product.root :controller => 'ice_cream'
  end

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
