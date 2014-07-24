Default::Application.routes.draw do
  resources :welcome

  root to: 'welcome#index'
end
