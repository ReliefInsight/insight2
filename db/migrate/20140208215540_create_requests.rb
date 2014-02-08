class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.integer :amount
      t.string :pstatus
      t.datetime :request_at

      t.timestamps
    end
  end
end
