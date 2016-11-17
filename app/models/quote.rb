class Quote < ApplicationRecord

	def self.get_random_quote
		size = Quote.count
		random_index = Random.rand(size).to_i
		quote = Quote.limit(1).offset(random_index).first
	end
end
