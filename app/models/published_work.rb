class PublishedWork < ActiveRecord::Base
	validates :name, presence: true
	validates :description, presence: true
	validates :writer, presence: true
	validates :artist, presence: true
	validates :url, presence: true
	
end
