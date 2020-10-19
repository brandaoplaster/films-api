require 'rest-client'
require 'json'

class OmdbService

  def initialize(title)
    @title = title
  end

  def perform
    begin
      api_url = Rails.application.credentials[Rails.env.to_sym][:omdb_api_url]
      api_key = Rails.application.credentials[Rails.env.to_sym][:omdb_api_key]
      url = "#{api_url}?apikey=#{api_key}&t=#{@title}"
      response = RestClient.get url
      result = JSON.parse(response.body)

    rescue RestClient::ExceptionWithResponse => e
      e.response
    end
  end
end