class User < ApplicationRecord
  # has_many :budgets, dependent: :destroy
  has_many :transactions, dependent: :destroy
  has_many :incomes, :through => :transactions, dependent: :destroy
  has_many :outgos, :through => :transactions, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable, :omniauth_providers => [:google, :github, :facebook]

    def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end
end
