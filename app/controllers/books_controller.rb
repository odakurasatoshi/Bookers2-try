class BooksController < ApplicationController

	def create
		@book = Book.new(book_params)
		@book.user_id = current_user.id #ここがないと保存されず、入力前の画面に戻るのは何故？１対Nの設定と関係あり？
		@book.save
		redirect_to books_path
	end

	def index
		@book = Book.new
		@books = Book.all
	end

	def show
	end

	private
	def book_params
		params.require(:book).permit(:title, :body)
	end

end
