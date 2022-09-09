class CreateSharings < ActiveRecord::Migration[7.0]
  def change
    create_table :sharings do |t|
      t.references :user_id
      t.references :post_id
      t.timestamps
    end
  end
end
