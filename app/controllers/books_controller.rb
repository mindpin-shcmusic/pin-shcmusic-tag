class BooksController < ApplicationController
  before_filter :login_required
  before_filter :per_load
  def per_load
    @book = Book.find(params[:id]) if params[:id]
  end
  
  def index
    @books = Book.all
  end
  
  def add_tag
  end
  
  def do_add_tag
    @book.add_tag(current_user,params[:name])
    redirect_to "/books"
  end
  
  def remove_tag
    @book.remove_tag(params[:tag_name])
    redirect_to "/books"
  end
end
