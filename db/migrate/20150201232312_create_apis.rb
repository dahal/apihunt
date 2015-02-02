class CreateApis < ActiveRecord::Migration
  def change
    create_table :apis do |t|
      t.string :api_name
      t.string :api_doc_url
      t.text :api_tagline

      t.timestamps null: false
    end
  end
end
