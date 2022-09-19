class CreateSharings < ActiveRecord::Migration[7.0]
  def change
    create_table :sharings do |t|
      t.references :user
      t.references :post
      t.timestamps
    end
  end
end
