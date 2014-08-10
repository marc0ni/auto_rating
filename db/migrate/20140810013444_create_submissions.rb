class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :sub_no
      t.string :eff_date
      t.string :exp_date
      t.belongs_to :agent, index: true
      t.belongs_to :account, index: true
      t.references :policy, index: true
      t.references :proposal, index: true
      t.references :risk, index: true

      t.timestamps
    end
  end
end
