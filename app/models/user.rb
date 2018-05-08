class User < ActiveRecord::Base

  has_many :user_interests
  has_many :interest_recommendations, through: :user_interests
  has_many :user_recommendations, through: :user_interests

end
