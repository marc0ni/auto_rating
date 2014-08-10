class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :contact
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.references :account, index: true
      t.references :submission, index: true
      t.references :proposal, index: true
      t.string :policy
      t.string :references

      t.timestamps
    end
  end
end
