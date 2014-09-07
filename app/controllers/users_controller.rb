class UsersController < ApplicationController
  def index
  end

  def validateMe
    @user = User.where(:user_name => (params[:user_name]) )
    user_name = params[:user_name]
    puts "user_name"
    password = params[:password]
  	if @user
  		redirect_to(:action => 'new')
  	else
  		redirect_to(:action => 'index')
  		flash[:notice] = "Try Again"
  	end
  end


  	
  def new
  end
end
