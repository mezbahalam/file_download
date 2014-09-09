FileDownload::Application.routes.draw do

  resources :addfiles do
    collection  do
      get 'all_users'
    end
  end
  root "addfiles#index"
  devise_for :admins
  devise_for :users

end
