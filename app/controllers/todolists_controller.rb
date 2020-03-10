class TodolistsController < ApplicationController
  def index
  	# Viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成する。
  	@book = Book.new
     # 全てのデータを取り出して、格納
    @books = Book.all
  end

  # 投稿設定
  def create
  	# ストロングパラメータを使用
  	book = Book.new(book_params)
  	# DBに保存
  	book.save
  	#トップ画面へリダイレクト
  	redirect_to '/top'
  end

  private

  # 投稿データの受け取り
  def book_params
  	params.require(:book).permit(:title, :body)
  end

end
