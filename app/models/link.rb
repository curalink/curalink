require 'valid_url'

class Link < ActiveRecord::Base
  belongs_to :author
  validates :title, presence: true,
		    length: { minimum: 5 }
  validates :uri, presence: true, :url => true
end
