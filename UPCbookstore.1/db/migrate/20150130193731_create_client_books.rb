class CreateClientBooks < ActiveRecord::Migration
  def change
    create_table :client_books do |t|
      t.integer :book_id
      t.integer :client_id

      t.timestamps
    end
  end
end
