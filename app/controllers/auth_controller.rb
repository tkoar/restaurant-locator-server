class AuthController < ApplicationController

  def generate
    render json: {secure_key: Algolia.generate_secured_api_key('9808c085b81a337cbe0fff7851525763', [])}
  end

end
