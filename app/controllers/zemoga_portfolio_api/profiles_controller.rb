class ZemogaPortfolioApi::ProfilesController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render json: Profile.first
  end

  def update
    profile = Profile.first
    if profile.update(profile_params)
      render json: profile
    else
      render json: { errors: profile.errors }, status: 422
    end
  end

  private
    def profile_params
      params.require(:profile)
            .permit(:name, :description, :image_url, :twitter)
    end
end
