class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :subtitle
      t.string :description

      t.timestamps
    end
  end
end
