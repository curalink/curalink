class Link < ActiveRecord::Base
  validates :title, presence: true,
		    length: { minimum: 5 }
  validates :uri, presence: true,
		    length: { minimum: 20 }
end
