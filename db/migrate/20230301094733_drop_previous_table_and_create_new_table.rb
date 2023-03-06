class DropPreviousTableAndCreateNewTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :identifiers
    create_table :organisations do |t|
      t.bigint :ORG_ID
      t.string :PPON_ID
      t.timestamps
    end
  end
end
