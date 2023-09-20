class AddVenueIdToEvent < ActiveRecord::Migration[7.0]
  def change
    # add_reference :events, :venue, null: false, foreign_key: true
    add_column :events, :venue_id, :bigint
    add_foreign_key :events, :venues, column: :venue_id
  end
end
