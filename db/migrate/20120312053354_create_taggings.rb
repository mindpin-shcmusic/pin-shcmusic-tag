class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.integer :tag_id
      t.integer :creator_id
      t.integer :model_id
      t.string :model_type
      t.timestamps
    end
  end
end
