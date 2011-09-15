class AddUrlToSpeeches < ActiveRecord::Migration
  def change
    add_column :speeches, :url, :string
  end
end
