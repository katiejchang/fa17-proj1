class Pokemon < ApplicationRecord
	belongs_to :trainer, optional: true
	validates :name, uniqueness: true, length: {minimum: 2}
end
