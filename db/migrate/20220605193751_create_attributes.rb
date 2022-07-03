class CreateAttributes < ActiveRecord::Migration[7.0]
  def change
    create_table :attributes do |t|
      t.string 'lab_name'
      t.integer 'lab_code'
      t.integer 'lab_phone_number'
      t.timestamps
    end
  end
end
