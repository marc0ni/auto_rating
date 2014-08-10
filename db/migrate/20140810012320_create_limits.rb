class CreateLimits < ActiveRecord::Migration
  def change
    create_table :limits do |t|
      t.string :partial
      t.string :bipd
      t.string :medical
      t.belongs_to :risk, index: true

      t.timestamps
    end
  end
end
