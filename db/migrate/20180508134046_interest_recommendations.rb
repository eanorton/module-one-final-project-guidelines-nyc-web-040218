class InterestRecommendations < ActiveRecord::Migration[5.0]
  def change
    create_table :interest_recommendations do |t|
      t.integer :user_interest_id
      t.integer :user_recommendation_id
    end
  end
end
