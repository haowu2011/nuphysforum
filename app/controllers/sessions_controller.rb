class SessionsController < ApplicationController
  def new
  end
  
  def create
    u = User.find_by_user_email(params["email"])
#     if u && u.authenticate(params["password"])
    if u
      cookies["user_id"] = u.id
      redirect_to "/categories"
    else
      redirect_to "/login", notice: "Make sure your email and password are correct"
    end
  end
  
  def destroy
    cookies["user_id"] = nil
    redirect_to "/login", notice: "You've been logged out"
  end
end