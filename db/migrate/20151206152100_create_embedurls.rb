class CreateEmbedurls < ActiveRecord::Migration
  def change
    create_table :embedurls do |t|
      t.string :url
      t.belongs_to :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
