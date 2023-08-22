class CreateInvoiceItems < ActiveRecord::Migration[7.0]
  def change
    create_table :invoice_items do |t|
      t.references :item, null: false, foreign_key: true
      t.references :invoice, null: false, foreign_key: true
      t.float :quantity, null: false
      t.float :price, null: false

      t.timestamps
    end
  end
end
