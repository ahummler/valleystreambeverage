class CreateCorporates < ActiveRecord::Migration
  def change
    create_table :corporates do |t|
      t.string :taxid
      t.string :companyname
      t.string :address
      t.string :owner

      t.timestamps null: false
    end
  end
end
