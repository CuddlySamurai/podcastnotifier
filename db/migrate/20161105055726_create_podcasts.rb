class CreatePodcasts < ActiveRecord::Migration[5.0]
  def change
    create_table :podcasts do |t|
      t.string :name
      t.string :imageurl
      t.string :rss
      t.string :color

      t.timestamps
    end
  end
end
