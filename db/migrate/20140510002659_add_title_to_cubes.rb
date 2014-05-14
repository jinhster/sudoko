class AddTitleToCubes < ActiveRecord::Migration
  def change
    add_column :cubes, :title, :string
    add_index :cubes, :title
  end
end
