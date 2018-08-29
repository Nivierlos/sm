class Department < ApplicationRecord
    has_many :students
	has_many :courses
    has_many :results
    has_many :users
    
    validates :name, presence: true
    validates :full_name, presence: true
end
