class UsersController < ApplicationController
  respond_to :html, :json, :xml
  before_filter :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_filter :correct_user,   only: [:edit, :update]
  before_filter :admin_user,     only: :destroy
  
  def index
    @users = User.paginate(page: params[:page])
    respond_with(@users)
  end
  
  def new
    @user = User.new
    @title = "Sign up"
  end
  
 def show
    @user = User.find(params[:id])
    @posts = @user.posts.paginate(page: params[:page])
    @themes = @user.themes.paginate(page: params[:page])
    @posts = @user.posts.paginate(page: params[:page])
    respond_with(@user)
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Pocketgrails!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
    #@user = User.find(params[:id])
  end
  
  def update
    #@user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end
  
  #def show
  #  @user = User.find(params[:id])
  #  @posts = @user.posts.paginate(page: params[:page])
  #  respond_with(@user)
  #end
  
private
    
    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end
  
    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end
end