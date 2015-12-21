class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :content
      t.belongs_to :forum_thread, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :admin, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
