class InterestRecommendation < ActiveRecord::Base

  belongs_to :user_interest
  belongs_to :user_recommendation

end
