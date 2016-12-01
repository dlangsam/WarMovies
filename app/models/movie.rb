class Movie < ApplicationRecord
	has_many :images, inverse_of: :movie
	accepts_nested_attributes_for :images
	def self.accurate_movies
		very_accurate_movies = Movie.where("accuracy > 7" )
		accurate_movies = Movie.where("accuracy >= 5 and accuracy <= 7" )
		medium_accurate_movies = Movie.where("accuracy >= 2 and accuracy <= 4" )
		fiction_movies = Movie.where("accuracy <= 1")
		return {"very_accurate" => very_accurate_movies,
			"accurate" => accurate_movies,
			"medium_accurate" => medium_accurate_movies,
			"fiction" => fiction_movies
		}

	end

	def self.sizes
		large_movies = Movie.where("size >= 30" )
		small_movies = Movie.where("size < 30 and size > 1" )
		one_person_movies = Movie.where("size = 1" )
	
		return {"large_cast" => large_movies,
			"small_cast" => small_movies,
			"one_person" => one_person_movies,
			
		}

	end
	def read_description
		if(self.description != nil )
			s3 =  Aws::S3::Client.new(region: 'us-east-1')
			obj = s3.get_object(bucket:'combat-aces', key: "descriptions/#{self.description}")
			desc_array = obj.body.read.split("\n")
		else
		return ""
		end

	end
	def main_image

		self.images.where(main: true).first
	end



	
end
