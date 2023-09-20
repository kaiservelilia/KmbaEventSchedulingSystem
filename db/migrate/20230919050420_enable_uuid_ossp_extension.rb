class EnableUuidOsspExtension < ActiveRecord::Migration[6.0]
  def change
    enable_extension 'pgcrypto' # Use 'pgcrypto' for UUID generation in PostgreSQL
  end
end
