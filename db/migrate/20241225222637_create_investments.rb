class CreateInvestments < ActiveRecord::Migration[7.2]
  def change
    create_table :investments do |t|
      t.string :asset
      t.float :value
      t.decimal :percent

      t.timestamps
    end
  end
end
