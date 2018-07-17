class ApplicationController < ActionController::API

  def configure_algolia
    return AlgoliaSearch.configuration = {
      application_id: 'YourApplicationID',
      api_key: 'YourAPIKey',
    }
  end

end
