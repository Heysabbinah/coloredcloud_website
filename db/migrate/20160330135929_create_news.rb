class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :email

      t.timestamps null: false
    end
  end
end
