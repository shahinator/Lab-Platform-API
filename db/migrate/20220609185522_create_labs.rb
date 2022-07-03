class CreateLabs < ActiveRecord::Migration[7.0]
  def change
    create_table :labs do |t|
      t.string 'lab_name'
      t.string 'lab_code'
      t.integer 'lab_phone_number'
      t.references :user, index: true
      t.timestamps
    end
  end
end
