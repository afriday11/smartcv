class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :industry, null: false
      t.string :size, null: false

      t.timestamps
    end

    add_index :companies, :industry
  end
end
