class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :cost

      t.timestamps
    end
  end
end
