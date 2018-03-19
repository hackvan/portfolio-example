class ProfilesController < ApplicationController
  before_action :set_profile, only: [:index, :edit, :update]
  before_action :authenticate_user!, only: [:edit, :update]

  def index
    @timeline = @profile.twitter_timeline(@profile.twitter, 5)
  end

  def edit
  end

  def update
    if @profile.update(profile_params)
      flash[:success] = 'the portfolio has been updated successfully'
      redirect_to root_path
    else
      render :edit
    end
  end

  private
    def set_profile
      @profile = Profile.first
    end

    def profile_params
      params.require(:profile)
            .permit(:name, :description, :image_url, :twitter)
    end

end
