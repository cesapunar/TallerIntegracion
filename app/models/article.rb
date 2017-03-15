class Article < ApplicationRecord
	validates :down, length: {maximum: 250}

	def body_truncated
		body.truncate(1003)
	end
end
