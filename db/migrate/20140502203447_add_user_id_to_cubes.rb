class AddUserIdToCubes < ActiveRecord::Migration
  def change
    add_column :cubes, :user_id, :integer
    add_index :cubes, :user_id
  end
end
