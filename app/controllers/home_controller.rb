class HomeController < ApplicationController

  def index
    render "index"
  end

  def create
    Post.create!(content:params[:content],user_id:current_user.id)
    render "index"
  end

  def show
    @posts=Post.all
    render "show"
  end


  def edit
    @post=Post.find_by(id:params[:id])
    render "edit"
  end

  def update
    Post.find_by(id:params[:id]).update!(content:params[:content])
    redirect_to controller: :home, action: :show
  end

  def destroy
    Post.find_by(id:params[:id]).destroy!
    redirect_to controller: :home, action: :show
  end

  def favorite
    post=Post.find_by(id:params[:id])
    favorite_number=post.favorite + 1
    post.update!(favorite:favorite_number)
    redirect_to controller: :home, action: :show
  end
end
