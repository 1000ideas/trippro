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

  resources :news, only: [:index, :show]
  resources :webinars, only: [:index, :show]
  resources :testimonials, only: [:index, :show]
  resources :contacts, only: [:index, :show]


  scope path: 'admin', as: :admin do
    scope module: :admin do
      resources :contacts, except: [:show] do
        collection do
          constraints(lambda {|req| req.params.has_key?(:ids)}) do
            delete :bulk_destroy, action: :selection, defaults: {bulk_action: :destroy}
          end
        end
      end
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
      get :settings, controller: :content, action: :settings
      post :settings, controller: :content, action: :settings_update
      resource :content, controller: :content, only: :update
    end

    scope module: 'l/admin' do
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
    # get :get_started 
    get :sign_up
    get :demo
    root action: :index, via: :get
  end


  mount TinyMCE::Rails::Engine => '/tinymce'
end
