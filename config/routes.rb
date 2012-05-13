LearnHtml::Application.routes.draw do
  get "static_pages/home"

  devise_for :users

  root :to => "static_pages#home"

  resources :pages do
    member do
      get :body
    end
  end

end
