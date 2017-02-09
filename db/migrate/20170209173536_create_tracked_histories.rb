class CreateTrackedHistories < ActiveRecord::Migration
  def change
    create_table :tracked_histories do |t|
      t.references :tracked_url, index: true, foreign_key: true
      t.string :ip_address

      t.timestamps
    end
  end
end
