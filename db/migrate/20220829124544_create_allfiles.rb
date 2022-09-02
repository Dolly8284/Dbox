class CreateAllfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :allfiles do |t|

      t.timestamps
    end
  end
end
