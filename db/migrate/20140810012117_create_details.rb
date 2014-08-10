class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.string :partial
      t.string :make
      t.string :model
      t.string :year
      t.decimal :cost_new
      t.string :age_group
      t.string :territory
      t.string :size_class
      t.string :load_capacity
      t.string :fleet_nonfleet
      t.string :spec_causes
      t.string :gvw
      t.string :gcw
      t.string :business_use
      t.string :radius_class
      t.belongs_to :risk, index: true

      t.timestamps
    end
  end
end
