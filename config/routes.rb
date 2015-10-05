Rails.application.routes.draw do
  post 'source_rating/rate'

  post 'save_search/save'
  delete 'save_search/delete'
  get 'save_search/list'

  get 'article/getPreview'

  get 'article/postRating'

  get 'result/index'
  post 'result/index'
  get 'result/getResults'
  #get 'result/listMySavedSearches'
  get 'result/getSourceDetail'


  get 'result/print'

  get 'result/shareByEmail'

  get 'result/saveSearch'

  get 'result/saveResults'
  
   
  get 'account/listUsersJson'
  get 'account/listAllUsers'

  get 'analyst/listAllPendingArticles'

  get 'analyst/listAllArticlesInProgress'

  get 'moderator/listAllRejectedArticles'

  get 'moderator/listAllPendingArticles'

  get 'search/home'

  devise_for :users
  # You can have the root of your site routed with "root"
  root 'welcome#index'
  # The root page, which is not protected by authentication
  get 'welcome/index'
  get '/welcome/listHighestRatingArticles'
  get '/welcome/listLatestArticles'
   
  # REST service to get all the filter fields 
  get 'search_fields/list'

  #sample jquery web page, which has a date selector control 
  get 'welcome/jquery'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".



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
