class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :status, default: 1
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
