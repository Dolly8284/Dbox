class CreateStarreds < ActiveRecord::Migration[7.0]
  def change
    create_table :starreds do |t|

      t.timestamps
    end
  end
end
