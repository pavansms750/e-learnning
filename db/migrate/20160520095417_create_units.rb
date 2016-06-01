class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.string :pdf
      t.string :youtube_url
      t.text :rich_text
      t.string :video
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
