class AddDateInToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :date_in, :date
  end
end
