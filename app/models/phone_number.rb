class PhoneNumber < ActiveRecord::Base
	validates :number, presence: true
	validate :person_id, precense: true
	belongs_to :person
end
