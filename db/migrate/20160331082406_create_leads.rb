class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :email
      t.string :statut

      t.timestamps null: false
    end
  end
end
