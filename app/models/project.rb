class Project < ActiveRecord::Base
  has_many :rewards
  has_many :pledges
  has_many :users, through: :pledges # backers
  belongs_to :user # project owner

  validates :title, :user, :description, :goal, :start_date, :end_date, presence: true
  validate :present_start_date
  validates :goal, numericality: {greater_than: 0}

  def present_start_date
    if start_date < Date.today
      errors.add(:start_date, "can't be in past")
    end
  end



end
