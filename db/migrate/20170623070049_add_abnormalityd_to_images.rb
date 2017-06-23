class AddAbnormalitydToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :abnormality_doctor, :boolean
  end
end
