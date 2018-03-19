class Profile < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }
  validates :description, presence: true
  validates :image_url, length: { maximum: 500 }

  # Get a twitter timeline information to an specific account.
  def twitter_timeline(username, count = 5)
    twitter_client.user_timeline(username, count: count)
  rescue Twitter::Error
    []
  end

  private
    # Define a twitter client object to interact with twitter API.
    def twitter_client
      @client ||= Twitter::REST::Client.new do |config|
        config.consumer_key    = Rails.application.secrets.twitter_consumer_key
        config.consumer_secret = Rails.application.secrets.twitter_consumer_secret
      end
    end
end
