class CreateImageProcesses < ActiveRecord::Migration[5.0]
  def change
    create_table :image_processes do |t|
      t.string :title
      t.string :picture

      t.timestamps
    end
  end
end
