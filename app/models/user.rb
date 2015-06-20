
  class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]


  def self.from_omniauth(auth)

  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|

    user.email = auth.info.email
    user.password = Devise.friendly_token[0,20]
    user.first = auth.info.first_name
    user.last = auth.info.last_name
    user.sex = auth.extra.raw_info.gender
    user.uid = auth.uid
  end
end

  def accecpted_friends
   AccecptedFriend.where("user_id_1 == #{self.id} OR user_id_2 ==#{self.id}")
  end

  has_many :attendances
  has_many :comments
end
