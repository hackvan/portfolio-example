module TwitterManager
  # Get a twitter timeline information to an specific account.
  class TweetReader < ApplicationService
    attr_reader :username
    attr_reader :count

    def initialize(username, count = 5)
      @username = username
      @count = count
    end

    def call
      # Define a twitter client object to interact with twitter API.
      client = Twitter::REST::Client.new do |config|
        config.consumer_key    = Rails.application.secrets.twitter_consumer_key
        config.consumer_secret = Rails.application.secrets.twitter_consumer_secret
      end
      client.user_timeline(@username, count: @count)
    rescue Twitter::Error
      []
    end
  end
end