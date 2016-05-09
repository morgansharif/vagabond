class AddSlugToCities < ActiveRecord::Migration
  def change
    add_column :cities, :slug, :string
  end
end
