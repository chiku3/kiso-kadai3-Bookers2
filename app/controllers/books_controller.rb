class BooksController < ApplicationController
  def top
  end

  def show
    @user = current_user
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
    redirect_to book_path(@book),notice:"Book was successfully created."
    else
    @books = Book.all
    render :index
    end
  end

  def index
    @user = current_user
    @books = Book.all
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
    redirect_to book_path(@book),notice:"Book was successfully updated."
    else
    render :edit
    end
  end

  def destroy
    book = Book.find(params[:id])
    if book.destroy
    redirect_to books_path,notice:"Book was successfully destroyed."
    end
  end


  private

  def book_params
    params.require(:book).permit(:title,:body)
  end


end
