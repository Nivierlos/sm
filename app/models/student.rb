class Student < ApplicationRecord
	belongs_to :department
	#belongs_to :user
	#has_many :results, class_name: "results", foreign_key: "student_id"
	has_many :results

	attachment :profile_image
	
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true
	validates :level, presence: true
	validates :department_id, presence: true
	validates :sex, presence: true
	validates_uniqueness_of :reg_number if  :level && :ac_year

	def self.search(query)
        where("reg_number like ?","#{query}")
    end

   
end
