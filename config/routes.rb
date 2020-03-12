Rails.application.routes.draw do
  get 'todolists/index'
  get 'homes/top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'homes#top'

  post 'todolists' => 'todolists#create'

  # 投稿・一覧ページに移動
  get 'todolists' => 'todolists#index'
  # 詳細ページに移動
  get 'todolists/:id' => 'todolists#show', as: 'todolist'
  # 編集ページに移動
  get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist'
  # 編集部分を更新
  patch 'todolists/:id' => 'todolists#update', as: 'update_todolist'
  # 不要なページを削除
  delete 'todolists/:id' => 'todolists#destroy', as: 'destroy_todolist'
  # 投稿・一覧ページに戻る
  get 'todolists/:id/back' => 'todolists#back', as: 'back_todolist'

end
