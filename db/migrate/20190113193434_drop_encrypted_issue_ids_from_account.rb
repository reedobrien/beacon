class DropEncryptedIssueIdsFromAccount < ActiveRecord::Migration[5.2]
  def up
    remove_column :accounts, :issues_encrypted_ids
  end

  def down
    add_column :accounts, :issues_encrypted_ids, :text, default: [], array: true
  end
end
