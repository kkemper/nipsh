Rails.application.routes.draw do

  get 'demographics/new'

  get 'results' => 'results#new'

  get 'queries' => 'queries#new'

  ActiveAdmin.routes(self)
  get 'static_pages/submit_request'

  get 'static_pages/confirm_access'

  get 'static_pages/queries'

  get 'static_pages/results'

  get 'users/new'

  get 'user_sessions/new'

  root 'static_pages#home'

  get 'home' => 'static_pages#home'

  get 'help' => 'static_pages#help'

  get 'about' => 'static_pages#about'

  get 'contact' => 'static_pages#contact'

  get 'data' => 'static_pages#data_sources'

  get 'request' => 'request_accesses#new'
  
  get 'fitness_tests/new'

  get 'immunizations/new'

  get 'physical_exams/new'

  get 'hearing_tests/new'

  get 'cancer_screenings/new'

  get 'surgeries/new'

  get 'current_jobs/new'

  get 'tobacco_and_alcohols/new'

  get 'family_histories/new'

  get 'physical_activities/new'

  get 'other_employments/new'

  get 'health_conditions/new'

  get 'injury_illnesses/new'

  get 'duties/new'

  get 'mds_reports/new'

  get 'patients' => 'patients#new'

  resources :users, only: [:new, :create]

  resources :user_sessions, only: [:create, :destroy]

  delete '/sign_out', to: 'user_sessions#destroy', as: :sign_out
  
  get 'sign_in', to: 'user_sessions#new', as: :sign_in

  resources :password_resets, only: [:new, :create, :edit, :update]

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
