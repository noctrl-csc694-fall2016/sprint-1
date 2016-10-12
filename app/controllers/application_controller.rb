class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def hello
    render html: "hello, world! and Bill says... huzzah to 694.  JK shuffles the deck."
  end
end
