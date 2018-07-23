class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :omniauthable, omniauth_providers: [:tumblr]
  def self.from_omniauth(access_token)
    data = access_token.info
    puts access_token.to_yaml
    find_or_create_by(provider: access_token['provider'], uid: access_token['uid']) do |user|
      user.password = Devise.friendly_token[0,20]
      user.name = data.name   # assuming the user model has a name
      user.image = data.image
    end
  end
  def email_required?
    false
  end

  def email_changed?
    false
  end
end
