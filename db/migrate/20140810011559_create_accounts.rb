class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.belongs_to :agent, index: true
      t.references :submission, index: true
      t.references :proposal, index: true
      t.references :policy, index: true

      t.timestamps
    end
  end
end
