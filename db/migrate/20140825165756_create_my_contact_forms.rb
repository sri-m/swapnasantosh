class CreateMyContactForms < ActiveRecord::Migration
  def change
    create_table :my_contact_forms do |t|
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end
