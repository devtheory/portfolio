class RenameColumnInRequestsTable < ActiveRecord::Migration
  def change
    rename_column :requests, :need_hosting?, :need_hosting
  end
end
