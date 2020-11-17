class Api::CatsController < ApplicationController
  def index
    response = HTTP
      .headers({
        "Authorization" => "Bearer #{Rails.application.credentials.cats_api[:api_key]}",
      })
      .get("https://api.thecatapi.com/v1/images/search")
    render json: response.parse
  end
end
