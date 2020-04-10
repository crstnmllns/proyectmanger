class AddDateOutToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :date_out, :date
  end
end
