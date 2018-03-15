class AddPathColumnsToPictures < ActiveRecord::Migration[5.1]
  def up
    add_attachment :pictures, :path
  end

  def down
    remove_attachment :pictures, :path
  end
end
