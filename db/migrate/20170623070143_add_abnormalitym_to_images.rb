class AddAbnormalitymToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :abnormality_machine, :boolean
  end
end
