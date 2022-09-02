class CreateFilerequests < ActiveRecord::Migration[7.0]
  def change
    create_table :filerequests do |t|

      t.timestamps
    end
  end
end
