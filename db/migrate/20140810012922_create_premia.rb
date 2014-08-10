class CreatePremia < ActiveRecord::Migration
  def change
    create_table :premia do |t|
      t.decimal :comp_base, precision: 8, scale: 2
      t.decimal :coll_base, precision: 8, scale: 2
      t.decimal :otc_base, precision: 8, scale: 2
      t.belongs_to :risk, index: true

      t.timestamps
    end
  end
end
