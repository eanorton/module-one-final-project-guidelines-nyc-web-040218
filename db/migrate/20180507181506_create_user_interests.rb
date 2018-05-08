class CreateUserInterests < ActiveRecord::Migration[5.0]
  def change
    create_table :user_interests do |t|
      t.string :query_title
      t.integer :user_id
    end
  end
end
