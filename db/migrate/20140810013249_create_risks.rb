class CreateRisks < ActiveRecord::Migration
  def change
    create_table :risks do |t|
      t.string :risk
      t.integer :premium
      t.integer :deductible
      t.integer :limit
      t.belongs_to :submission, index: true
      t.references :limits, index: true
      t.references :deductibles, index: true
      t.references :details, index: true

      t.timestamps
    end
  end
end
