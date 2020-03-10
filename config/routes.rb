Rails.application.routes.draw do
  get 'todolists/index'
  get 'homes/top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'homes#top'

  # 新規投稿後、topページに移動
  get '/top' => 'homes#top'

  post 'todolists' => 'todolists#create'
  get 'todolists' => 'todolists#index'


end
