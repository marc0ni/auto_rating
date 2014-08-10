class CreateDeductibles < ActiveRecord::Migration
  def change
    create_table :deductibles do |t|
      t.string :partial
      t.decimal :spec_causes, precision: 8, scale: 2
      t.string :comp
      t.string :coll
      t.belongs_to :risk, index: true

      t.timestamps
    end
  end
end
