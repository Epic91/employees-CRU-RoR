class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :gender
      t.string :phone_number
      t.string :email_address
      t.string :occupation

      t.timestamps
    end
  end
end
