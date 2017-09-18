class Pledge < ApplicationRecord
  belongs_to :user
  belongs_to :project

  validates :dollar_amount, presence: true
  validates :user, presence: true
  validate :not_owner_pledge

def not_owner_pledge
  if user == project.user
    errors.add(:base, "project owner can't be pledger")
  end
end


end
