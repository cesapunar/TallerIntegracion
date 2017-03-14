class Article < ApplicationRecord
	validates :down, length: {maximum: 250}
end
