class PagesController < ApplicationController
  #before_filter :redirect_if_logged_in
  def index
    redirect_to "/admins"
  end
  def login
    render :layout => 'login'
  end

  def error
    render :layout => 'login'
  end
  private
#  def redirect_if_logged_in
#    if user_signed_in?
#      flash[:notice] = 'You must sign out first!'
#      redirect_to users_dashboard_path
#    end
#  end
end
