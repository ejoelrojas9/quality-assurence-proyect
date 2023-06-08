class CreateJwtDenylist < ActiveRecord::Migration[7.0]
  def change
    create_table :jwt_denylist do |t|
      t.string :jti, null: false
      t.datetime :exp, null: false
    end
    add_index :jwt_denylist, :jti
  end
  # 95909196f87b512c2fcdec080ab728cce09c97229df261ace95bfa57efb0706f2e92897de730d90c83c55f59199fd557acc77c51e890627299858e484bf1ceae
end
