class CreateTrackedUrls < ActiveRecord::Migration
  def change
    create_table :tracked_urls do |t|
      t.references :destination_link, index: true, foreign_key: true
      t.string :url

      t.timestamps
    end
  end
end
