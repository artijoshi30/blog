class DeleteTableTag < ActiveRecord::Migration[6.1]
  def change
    drop_table :tag_u_sers
    drop_table :tag_users
  end
end
