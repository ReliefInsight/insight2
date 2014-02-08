class CreateRequestRelations < ActiveRecord::Migration
  def change
    create_table :request_relations do |t|
      t.integer :user_id
      t.integer :amount
      t.string :dstatus
      t.datetime :request_at

      t.timestamps
    end
  end
end
