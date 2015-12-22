class AddPhoneNumberToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :phone_number, :bigint
  end
end
