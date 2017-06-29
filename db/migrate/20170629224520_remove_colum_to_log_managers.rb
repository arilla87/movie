class RemoveColumToLogManagers < ActiveRecord::Migration[5.1]
  def change
    remove_column :log_managers, :marketing_mailer, :integer
    remove_column :log_managers, :marketing_mailer_date, :date
  end
end
