class CreateDestinationLinks < ActiveRecord::Migration
  def change
    create_table :destination_links do |t|
      t.string :url

      t.timestamps null: false
    end
  end
end
