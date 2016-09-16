class ProfileController < ApplicationController
  def index
    require "requests"

response = Requests.request("GET", "https://www.googleapis.com/books/v1/volumes?q=ruby+on+rails")

# Now you have these methods available

response.body    #=> String with the response body
@data = JSON.parse(response.body)
  end

end
