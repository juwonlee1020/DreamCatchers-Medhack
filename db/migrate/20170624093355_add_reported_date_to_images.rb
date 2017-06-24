class AddReportedDateToImages < ActiveRecord::Migration[5.1]
  def change
  	add_column :images, :date_reported, :datetime
  end
end
