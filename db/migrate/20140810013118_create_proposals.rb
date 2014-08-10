class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :proposal_no
      t.belongs_to :submission, index: true
      t.references :policy, index: true

      t.timestamps
    end
  end
end
