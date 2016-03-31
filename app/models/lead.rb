class Lead < ActiveRecord::Base
	#want to valid the presense of field
	validates :email, :statut, presence: true
end
