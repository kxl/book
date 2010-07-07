class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.string :title
      t.string :image_url
      t.string :author
      t.decimal :price

      t.timestamps
    end
  end

  def self.down
    drop_table :books
  end
end
