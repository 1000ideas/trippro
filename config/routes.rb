Trippro::Application.routes.draw do

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

  scope path: 'admin', as: :admin do
    scope module: :admin do
    end

    scope module: 'l/admin' do
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
    root action: :index, via: :get
  end


  mount TinyMCE::Rails::Engine => '/tinymce'
end
