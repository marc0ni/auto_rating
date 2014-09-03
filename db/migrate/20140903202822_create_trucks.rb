class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string :type
      t.string :territory
      t.string :business_use
      t.string :fleet_nonfleet
      t.string :make
      t.string :year
      t.decimal :cost_new, precision: 8, scale: 2
      t.string :age_group
      t.string :size_class
      t.string :gvw
      t.string :gcw

      t.timestamps
    end
  end
end
