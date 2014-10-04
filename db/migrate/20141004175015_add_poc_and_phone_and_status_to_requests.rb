class AddPocAndPhoneAndStatusToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :poc, :string
    add_column :requests, :phone , :string
    add_column :requests, :status, :string
  end
end
