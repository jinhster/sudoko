class CreateCubes < ActiveRecord::Migration
  def change
    create_table :cubes do |t|
      t.string :description
      t.string :genre

      t.timestamps
    end
  end
end
