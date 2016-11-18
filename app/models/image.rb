class Image < ApplicationRecord
	belongs_to :movie, inverse_of: :images
	validates_presence_of :movie

end
