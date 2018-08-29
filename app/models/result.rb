class Result < ApplicationRecord

    belongs_to :student
	belongs_to :department
	belongs_to :course
	belongs_to :user

	validates :student_id, presence: true
	validates :department_id, presence: true
	validates :course_id, presence: true
	validates :marks, presence: true
	validates :level, presence: true


	def self.search(query)
		def self.search(query)
			where("student.reg_number like ? OR marks like ?","%#{query}%", "%#{query}%")
		end
	end
    
end
