Rails.application.routes.draw do
  ##get 'books/index'
  get 'homes/top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'homes#top'

  # post 'books' => 'books#create'


  resources :books

  # 投稿・一覧ページに移動
  ##get 'books' => 'books#index', as: 'books'
  # 詳細ページに移動
  ##get 'books/:id' => 'books#show', as: 'book'
  # 編集ページに移動
  ##get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  # 編集部分を更新
  ##delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # 投稿・一覧ページに戻る
  get 'books/:id/back' => 'books#back', as: 'back_book'

end
