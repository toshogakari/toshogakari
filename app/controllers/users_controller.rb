class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  # before_action :authenticate_user!

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  private
  # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find_by(nickname: params[:nickname])
    end

end
