class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable,
          :recoverable,
          :jwt_authenticatable,
          :registerable,
          :rememberable,
          jwt_revocation_strategy: JwtDenylist
end
