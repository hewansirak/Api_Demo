class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.string :invoice_number, null: false
      t.date :generated_on, null: false, default: Date.current
      t.string :status, null: false
      t.references :customer, null: false, foreign_key: true
      t.float :total_price, null: true

      t.timestamps
    end
    add_index :invoices, :invoice_number, unique: true
  end
end
