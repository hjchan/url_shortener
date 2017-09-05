class Url < ApplicationRecord

	validates :long_url, 
		presence: true,
		format: { with: /\Ahttp:\/\//,
				 	message: "Wrong format"}
	
	def shorten
		new_url = [*('a'..'z'),*('0'..'9')].shuffle[0,8].join
		self[:short_url] = new_url
	end
end
