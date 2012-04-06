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
    name = params[:name].split(/,|，| /)*","
    current_user.tag(@book, :with => name, :on=>:private_tags, :skip_save => true)
    redirect_to "/books"
  end
  
end
