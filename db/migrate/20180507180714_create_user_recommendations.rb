class CreateUserRecommendations < ActiveRecord::Migration[5.0]
  def change
    create_table :user_recommendations do |t|
      t.string :query_title
      t.string :recommendation_category
      t.text :recommendation_title
      t.text :recommendation_content
    end
  end
end
