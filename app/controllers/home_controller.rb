class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: %i(index)

  def index
    redirect_to users_url if user_signed_in? && mobile_device?
  end
end
