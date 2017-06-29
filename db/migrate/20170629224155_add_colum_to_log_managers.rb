class AddColumToLogManagers < ActiveRecord::Migration[5.1]
  def change
    add_column :log_managers, :marketing_mailer, :integer
    add_column :log_managers, :marketing_mailer_date, :date
  end
end
