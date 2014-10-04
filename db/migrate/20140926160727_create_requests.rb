class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.references :user, index: true
      t.string :purpose
      t.string :timeline
      t.string :budget
      t.string :users_supported
      t.string :need_hosting?
      t.string :remarks

      t.timestamps
    end
  end
end
