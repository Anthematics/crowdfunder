class Reward < ApplicationRecord
	belongs_to :project
	validates :description, presence: true
	validates :dollar_amount, presence: true
end
