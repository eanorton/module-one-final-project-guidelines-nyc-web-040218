class UserInterest < ActiveRecord::Base

  belongs_to :user
  has_many :interest_recommendations
  has_many :user_recommendations, through: :interest_recommendations

end
