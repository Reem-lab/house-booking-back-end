class AddReferencesToTables < ActiveRecord::Migration[7.0]
  def change
    add_reference :houses, :user, foreign_key: true 
    add_reference :reservations, :user, foreign_key: true 
    add_reference :reservations, :house, foreign_key: true 
  end
end
