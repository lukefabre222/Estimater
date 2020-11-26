class CreateEstimates < ActiveRecord::Migration[5.2]
  def change
    create_table :estimates do |t|
      t.string :net
      t.string :tel
      t.string :tv
      t.integer :present_price
      t.string :housing_form
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
