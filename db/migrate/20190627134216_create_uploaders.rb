class CreateUploaders < ActiveRecord::Migration[5.2]
  def change
    create_table :uploaders do |t|
      t.string :title
      t.text :info

      t.timestamps
    end
  end
end
