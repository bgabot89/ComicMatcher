class Writing < ActiveRecord::Base
	belongs_to :user
	validates :name, presence: true
	validates :description, presence: true
	validates :description, length: { maximum: 300 }
end
