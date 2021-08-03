class CreateCouriers < ActiveRecord::Migration[6.1]
  def change
    create_table :couriers do |t|
      t.string :name
      t.string :email

      t.timestamps
    end

    add_index :couriers, :email, unique: true
  end
end
