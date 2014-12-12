require 'http_url_validation_improved'

class Link < ActiveRecord::Base
  validates :title, presence: true,
		    length: { minimum: 5 }
  validates :uri, presence: true
  validates_http_url :uri, :content_type => "text/html"
end
