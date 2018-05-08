class UserRecommendation < ActiveRecord::Base

  has_many :interest_recommendations
  has_many :interests, through: :interest_recommendations

end
