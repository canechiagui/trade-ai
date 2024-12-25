class CreateTrades < ActiveRecord::Migration[7.2]
  def change
    create_table :trades do |t|
      t.string :asset
      t.integer :contracts
      t.float :buy_price
      t.float :sell_price
      t.decimal :financial_result
      t.boolean :result

      t.timestamps
    end
  end
end
