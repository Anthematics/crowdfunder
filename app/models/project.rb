class Project < ApplicationRecord
	has_many :rewards
	has_many :pledges
	has_many :users, through: :pledges # backers
	belongs_to :user # project owner
	validates :title, :user, :description, :goal, :start_date, :end_date, presence: true

	def time_left_until_deadline
		current = DateTime.now
		@time_to_deadline = end_date - current
		return @time_to_deadline
	end

end
