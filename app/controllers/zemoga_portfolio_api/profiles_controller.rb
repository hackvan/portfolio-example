class ZemogaPortfolioApi::ProfilesController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render json: Profile.first
  end
end
