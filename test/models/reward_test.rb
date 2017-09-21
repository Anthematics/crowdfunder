require 'test_helper'

class RewardTest < ActiveSupport::TestCase

  def new_project
      Project.new(
        title:       "Cool new boardgame",
        description: "Trade sheep",
        start_date:  Date.today,
        end_date:    Date.today + 1.month,
        goal:        50000
      )
    end


  test 'A reward can be created' do
    reward = create(:reward)

    assert reward.persisted?
  end

  test 'A reward cannot be created without a dollar amount' do
    reward = build(:reward)
    reward.dollar_amount = nil
    reward.save
    refute reward.persisted?, 'Reward should not save without dollar amount'
  end

  test 'A reward cannot be created without a description' do
    reward = build(:reward)
    reward.description = nil
    reward.save
    refute reward.persisted?, 'Reward should not save without a description'
  end

  test "dollar amount must be positive" do
      rew = build(:reward)
      rew.dollar_amount = -1
      assert rew.invalid?
    end

end
