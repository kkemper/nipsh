Rails.application.routes.draw do

  resources :ohm_hearings
  resources :ohm_immunes
  resources :ohm_cbcs
  resources :ohm_urins
  resources :ohm_bchems
  resources :ohm_pfts
  resources :mds_patients
  resources :psych_backgrounds
  resources :psych_calcs
  resources :psych_employments
  resources :psych_demographics
  resources :psych_reports
  resources :fitness_test_tests
  resources :fitness_reports
  resources :fitness_departments
  resources :fitness_patients
  resources :bsdi_alcohol_barriers
  resources :bsdi_smoking_barriers
  resources :bsdi_diet_barriers
  resources :bsdi_activities
  resources :bsdi_weights
  resources :bsdi_annuals
  resources :bsdi_psyches
  resources :bsdi_tobacco_and_alcohols
  resources :bsdi_diets
  resources :bsdi_histories
  resources :bsdi_measurements
  resources :bsdi_hosps
  resources :bsdi_smokings
  resources :bsdi_exercises
  resources :bsdi_blood_pressures
  resources :bsdi_blood_chemistries
  resources :bsdi_diseases
  resources :bsdi_risks
  resources :bsdi_current_jobs
  resources :bsdi_patients
  resources :bsdi_reports
  get 'demographics/new'

  get 'results' => 'results#new'

  get 'basic_queries' => 'queries#new'

  ActiveAdmin.routes(self)

  get 'users/new'

  get 'user_sessions/new'

  root 'static_pages#home'

  get 'home' => 'static_pages#home'

  get 'help' => 'static_pages#help'

  get 'about' => 'static_pages#about'

  get 'contact' => 'static_pages#contact'

  get 'data' => 'static_pages#data_sources'

  get 'request' => 'request_accesses#new'

  get 'submit_request' => 'static_pages#submit_request'

  get 'confirm_access' =>'static_pages#confirm_access'

  #get 'queries' => 'static_pages#queries'

  get 'results' => 'static_pages#results'
  
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

  get 'patients/index'

  get 'searches/new'

  get 'searches/index'

  get 'searches/advanced_search'

  resources :users, only: [:new, :create, :show]

  resources :user_sessions, only: [:create, :destroy]

  delete '/sign_out', to: 'user_sessions#destroy', as: :sign_out
  
  get 'sign_in', to: 'user_sessions#new', as: :sign_in

  resources :password_resets, only: [:new, :create, :edit, :update]

  resources :request_accesses, only: [:new, :create]

  resources :access_approvals, only: [:edit]

  resources :access_denials, only: [:edit]

  resources :searches do
    collection { post :search, to: 'searches#index' }
  end

  get 'searches/csv', to: 'searches#csv', as: :searches_csv

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
