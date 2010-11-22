class CreateKanbans < ActiveRecord::Migration
  def self.up
    create_table :kanbans do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :kanbans
  end
end
