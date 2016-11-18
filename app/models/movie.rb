class Movie < ApplicationRecord
	has_many :images, inverse_of: :movie
	accepts_nested_attributes_for :images
	
	def read_description
		if(self.description != nil )
			s3 =  Aws::S3::Client.new(region: 'us-east-1')
			obj = s3.get_object(bucket:'combat-aces', key: self.description )
		
			obj.body.read
		else
		return ""
		end

	end
	def main_image

		self.images.where(main: true).first
	end

	
end
