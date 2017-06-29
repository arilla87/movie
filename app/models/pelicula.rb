class Pelicula < ApplicationRecord
	# belongs_to :country
	# belongs_to :genre
	# belongs_to :language
	has_many :comentarios
end
