Rails.application.load_tasks

class UpdatePlayerAssociation < ActiveRecord::Migration[5.2]
  def change
    Rake::Task["update_association:albums"].invoke
  end
end
