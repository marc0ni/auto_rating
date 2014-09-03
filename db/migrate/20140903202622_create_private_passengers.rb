class CreatePrivatePassengers < ActiveRecord::Migration
  def change
    create_table :private_passengers do |t|
      t.string :territory
      t.string :age_group
      t.decimal :cost_new, precision: 8, scale: 2
      t.string :make
      t.string :model
      t.string :year

      t.timestamps
    end
  end
end
