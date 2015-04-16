class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: %i(index)
  before_action :check_for_mobile

  def index
  end
end
