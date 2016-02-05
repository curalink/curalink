require 'valid_url'

class Link < ActiveRecord::Base
  validates :title, presence: true,
		    length: { minimum: 5 }
  validates :uri, presence: true, :url => true
end
