class RemoveOrgIdFromOrganisations < ActiveRecord::Migration[6.0]
  def change
    remove_column :organisations, :ORG_ID, :bigint
  end
end
