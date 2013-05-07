class AddEncryptedPasswordColumnToHosts < ActiveRecord::Migration
  def change
    add_column :hosts, :encrypted_password, :string
    remove_column :hosts, :password
  end
end
