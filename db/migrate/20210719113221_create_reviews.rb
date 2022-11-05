class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :score
      t.string :comment
      t.integer :game_id # this is our foreign key
      t.timestamps
    end
  end
end

class AddUserIdToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :user_id, :integer
  end
end

