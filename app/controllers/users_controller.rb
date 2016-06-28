class UsersController < ApplicationController
  def index
    @users = User.page(params[:page]).per Settings.per_page
  end
end
