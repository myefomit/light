class CreateBooks < Sequel::Migration
  def up
    create_table :books do 
      primary_key :id
      String :author
      String :title
      String :genre
      DateTime :created_at
      DateTime :updated_at
    end
  end

  def down
    drop_table :books
  end
end