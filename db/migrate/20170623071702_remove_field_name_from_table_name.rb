class RemoveFieldNameFromTableName < ActiveRecord::Migration[5.1]
  def change
    remove_column :images, :avatar_file_name, :string
    remove_column :images, :avatar_content_type, :string
    remove_column :images, :avatar_file_size, :integer
    remove_column :images, :avatar_updated_at, :datetime
  end
end

