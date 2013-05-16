ExceptionLogger::Engine.routes.draw do
  
  match '/exception_logger/logged_exceptions/:id' => 'logged_exceptions#show'
  
  # Exception Logger
  resources :logged_exceptions do
    collection do
      post :clear
      post :query
      post :destroy_all
      get :feed
    end
  end

  root :to => 'logged_exceptions#index'
end
