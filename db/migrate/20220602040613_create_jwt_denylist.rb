class CreateJwtDenylist < ActiveRecord::Migration[7.0]
  def change
    create_table :jwt_denylist do |t|
      t.string :jti, null: false
      t.timestamps :exp, null: false

      t.timestamps
    end
    add_index :jwt_denylist, :jti
  end
end
