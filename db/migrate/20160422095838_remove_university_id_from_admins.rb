class RemoveUniversityIdFromAdmins < ActiveRecord::Migration
  def change
    remove_column :admins, :university_id, :integer
  end
end
