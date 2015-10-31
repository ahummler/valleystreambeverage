class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :fname
      t.string :bname
      t.string :email

      t.timestamps null: false
    end
  end
end
