class CreateContentImages < ActiveRecord::Migration
  def change
    create_table :content_images do |t|
      t.belongs_to :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
