class AddFacialKeypointsToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :facial_keypoints, :json
  end
end
