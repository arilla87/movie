class AddPlanToPayments < ActiveRecord::Migration[5.1]
  def change
    add_column :payments, :plan, :integer
  end
end
