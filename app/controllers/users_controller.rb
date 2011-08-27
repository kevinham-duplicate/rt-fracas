class UsersController < ApplicationController
  def new
    @title = "Sign up"
  end

  def show
    @user = User.find_by_emp_id(params[:id])
  end
end
