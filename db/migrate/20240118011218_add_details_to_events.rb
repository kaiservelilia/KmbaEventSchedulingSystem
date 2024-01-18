class AddDetailsToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :time_in, :time
    add_column :events, :time_out, :time
    add_column :events, :no_of_attendies, :bigint
    add_column :events, :set_up_type, :string
    add_column :events, :available_resources, :string
    add_column :events, :payment_type, :string
    add_column :events, :email, :string
    add_column :events, :contact_number, :string
    add_column :events, :contact_person, :string
  end
end
