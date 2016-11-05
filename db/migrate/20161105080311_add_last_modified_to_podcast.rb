class AddLastModifiedToPodcast < ActiveRecord::Migration[5.0]
  def change
    add_column :podcasts, :last_modified, :string
  end
end
