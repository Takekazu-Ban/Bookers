class Book < ActiveRecord::Base
	# バリデーションチェック
    validates :title, presence: true

    validates :body, presence: true
end
