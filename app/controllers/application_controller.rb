class ApplicationController < ActionController::API

  helper_method :configure_algolia

  def configure_algolia
    Algolia.init(application_id: ENV[API_ID], api_key: ENV['ADMIN_API_KEY'])
    index = Algolia::Index.new('open_table_restaurants')
    return Algolia
  end

end
