class CreateDeletedfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :deletedfiles do |t|

      t.timestamps
    end
  end
end
