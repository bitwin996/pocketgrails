class StaticPagesController < ApplicationController
  def home
    if signed_in?
 #    @post  = current_user.posts.build
      @piece  = current_user.pieces.build
 #     @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def about
  end

  def help   
      if signed_in?
      @category  = current_user.categories.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def terms   
      if signed_in?
      @theme  = current_user.themes.build
      #@feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def privacy
     if signed_in?
      @piece  = current_user.pieces.build
      #@feed_items = current_user.feed.paginate(page: params[:page])
    end
  end
  
  def myfeed
    if signed_in?
      @user = current_user
      @posts = @user.mposts.paginate(page: params[:page])
      @categories = @user.categories.paginate(page: params[:page])
      @themes = @user.themes.paginate(page: params[:page])
      @pieces = @user.pieces.paginate(page: params[:page])
    end
  end
  

  def faq
  end
end
