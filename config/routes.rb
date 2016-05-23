Rails.application.routes.draw do
  devise_for :scholars
  devise_for :teachers
  devise_for :admins

  namespace :admin do
    get '/' => 'home#index'
    resources :teachers, only: [:index, :show]
    resources :faculties, only: [:index, :show]
    resources :specialties, only: [:index, :show]
    resources :groups, only: [:index, :show]
    resources :universities do
      resources :teachers, except: [:index, :show]
      resources :faculties, except: [:index, :show] do
        resources :specialties, except: [:index, :show] do
          resources :groups, except: [:index, :show] do
            resources :timetables do
              resources :courses
            end
          end
        end
      end
    end
  end

  namespace :teacher do
    get '/' => 'home#index'
    resources :timetables
  end

  namespace :scholar do
    get '/' => 'home#index'
    resources :timetables
    get 'profile' => 'profiles#show', as: :profile
    get 'profile/edit' => 'profiles#edit', as: :edit
    match 'profile/update' => 'profiles#update', as: :update, via: [:put, :patch]
  end

  root 'home#index'
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
