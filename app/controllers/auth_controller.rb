class AuthController < ApplicationController

  def configure_index
    index = Algolia::Index.new('open_table_restaurants')
    begin
      index.set_settings({
        'attributesForFaceting': ['food_type'],
        'sortFacetValuesBy': 'count',
        'searchableAttributes': ["name","food_type","city","area","neighborhood"],
        'ranking': ['typo','geo','words','attribute','proximity','exact','custom'],
        'hitsPerPage': 1000,
        'paginationLimitedTo': 5000
      })
    rescue
      render json: {"ERROR": "Failed to set index settings"}
    end
  end

  def generate
    configure_index
    byebug
    render json: {secure_key: Algolia.generate_secured_api_key(ENV['API_KEY'], [])}
  end

end
