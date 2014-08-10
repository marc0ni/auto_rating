class CreatePremia < ActiveRecord::Migration
  def change
    create_table :premia do |t|
      t.decimal :comp_base
      t.decimal :coll_base
      t.decimal :otc_base
      t.belongs_to :risk, index: true

      t.timestamps
    end
  end
end
