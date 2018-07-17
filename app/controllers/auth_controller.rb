class AuthController < ApplicationController

  def generate
    render json: {secure_key: Algolia.generate_secured_api_key(ENV['API_KEY'], [])}
  end

end
