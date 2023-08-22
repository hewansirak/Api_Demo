class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :code, null: false
      t.string :name, null: false

      t.timestamps
    end
    add_index :customers, :code, unique: true
  end
end
