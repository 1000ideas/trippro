Trippro::Application.routes.draw do

  get "content/update"

  mount Mercury::Engine => '/'

  devise_for :users,
    path: '',
    path_names: {
      :sign_in => 'login',
      :sign_out => 'logout',
      :sign_up => 'create',
      :password => 'reset_password',
      :confirmation => 'confirm_user',
      :registration => 'account'
    }


  get '/signups/region_options', to: 'signups#region_options'
  resources :news, only: [:index, :show]
  resources :webinars, only: [:index, :show]
  resources :testimonials, only: [:index, :show]
  resources :contacts, only: [:index, :new, :create]
  resources :signups, only:[:index,:new,:create]
  resources :categories, only: [:index, :show] do
    member do
      get "news"
    end
  end
  resources :signups, only: [:index, :show]
  resources :videos, only: [:index, :show]
  resources :screenshots, only: [:index, :show]

  get "/webinars/:id/register", to: "webinars#registration", as: "webinar_register"
  post "/webinars/:id/register", to: "webinars#register", as: "webinar_registration", formats: [:json, :js]

  scope path: 'admin', as: :admin do
    scope module: :admin do
      resources :screenshots, except: [:show] do
        collection do
          constraints(lambda {|req| req.params.has_key?(:ids)}) do
            delete :bulk_destroy, action: :selection, defaults: {bulk_action: :destroy}
          end
        end
      end
      resources :videos, except: [:show] do
        collection do
          constraints(lambda {|req| req.params.has_key?(:ids)}) do
            delete :bulk_destroy, action: :selection, defaults: {bulk_action: :destroy}
          end
        end
      end
=begin
      resources :signups do
        collection do
          constraints(lambda {|req| req.params.has_key?(:ids)}) do
            delete :bulk_destroy, action: :selection, defaults: {bulk_action: :destroy}
          end
        end
      end
=end
      resources :categories, except: [:show] do
        collection do
          constraints(lambda {|req| req.params.has_key?(:ids)}) do
            delete :bulk_destroy, action: :selection, defaults: {bulk_action: :destroy}
          end
        end
      end
=begin
      resources :contacts  do
        collection do
          constraints(lambda {|req| req.params.has_key?(:ids)}) do
            delete :bulk_destroy, action: :selection, defaults: {bulk_action: :destroy}
          end
        end
      end
=end
      resources :testimonials, except: [:show] do
        collection do
          constraints(lambda {|req| req.params.has_key?(:ids)}) do
            delete :bulk_destroy, action: :selection, defaults: {bulk_action: :destroy}
          end
        end
      end
      resources :webinars, except: [:show] do
        collection do
          constraints(lambda {|req| req.params.has_key?(:ids)}) do
            delete :bulk_destroy, action: :selection, defaults: {bulk_action: :destroy}
          end
        end
      end
=begin
      resources :requests do
        collection do
          constraints(lambda {|req| req.params.has_key?(:ids)}) do
            delete :bulk_destroy, action: :selection, defaults: {bulk_action: :destroy}
          end
        end
      end
=end
      resource :content, controller: :content, only: :update
    end

    scope module: 'l/admin' do
      scope controller: :admin do
        get :settings
        put :settings
      end
      resources :news, except: [:show] do
        collection do
          constraints(lambda {|req| req.params.has_key?(:ids)}) do
            delete :bulk_destroy, action: :selection, defaults: {bulk_action: :destroy}
          end
        end
      end
      resources :users do
        collection do
          constraints(lambda {|req| req.params.has_key?(:ids)}) do
            delete :bulk_destroy, action: :selection, defaults: {bulk_action: :destroy}
            put :bulk_admin, action: :selection, defaults: {bulk_action: :make_admin}
            put :bulk_user, action: :selection, defaults: {bulk_action: :make_user}
          end
        end
      end
      get '', to: "admin#index"
    end
  end

  scope controller: :application do
    get :contact
    get :tour
    get :faq
    get :terms_of_service
    # get :get_started
    get :sign_up
    # get :demo
    root action: :index, via: :get
  end

  get "/demo", to: "requests#new", as: "demo"
  post "/demo", to: "requests#create", as: "requests"


  mount TinyMCE::Rails::Engine => '/tinymce'
end
