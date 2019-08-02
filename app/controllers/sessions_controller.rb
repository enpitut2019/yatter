class SessionsController < ApplicationController
  before_action :set_user, only: ['create']

  def new
  end

  def create
    if (@user.authenticate(session_params[:password]))
      sign_in(@user)
      redirect_to projects_index_path
    else
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to projects_index_path
  end

  private

  def set_user
    @user = User.find_by(email: session_params[:email])

  rescue
    render action: 'new'
  end

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
