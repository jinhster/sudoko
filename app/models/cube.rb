class Cube < ActiveRecord::Base
	belongs_to :user
	has_attached_file :picture, :styles => { :medium => "500x500>", :thumb => "100x100>" }, :default_url => "Rails4.png"
	#validates :title, presence: true
	validates :description, presence: true
end
