class User < ActiveRecord::Base
  validates_presence_of :username
  validates_presence_of :password
  
  has_secure_password
  
  def User.generate_random_token
    SecureRandom.urlsafe_base64
  end
  
  def User.digest(token)
    Digest::SHA2.hexdigest(token)
  end      
  
  def self.find_by_token(token)
    User.find_by(persistence_digest: User.digest(token))
  end
  
  def save_persistence_token(token)
    update_attribute(:persistence_digest, User.digest(token))
  end
  
  def delete_persistence_token
    update_attribute(:persistence_digest, nil)
  end
end