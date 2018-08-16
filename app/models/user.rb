class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 

def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first
    unless user
        user = User.create(uid: access_token['uid'],
           email: data['email'],
           password: Devise.friendly_token[0,20]
        )
    end
    user
end

def self.from_github(auth)
    puts "<><><><><><><><>"
    puts auth
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      puts "<><><><><><>"
      puts user
      puts "<><><><><><>"
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      # If you are using confirmable and the provider(s) you use validate emails, 
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end

def self.new_with_session(params, session)
  super.tap do |user|
  	 if data = session["devise.google_oauth2_data"]&& session["devise.google_oauth2_data"]["extra"]["raw_info"]
  	 	user.email = data["email"] if user.email.blank?
  	 end
  	end
  end
end