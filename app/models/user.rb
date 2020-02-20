class User < ApplicationRecord
    attr_accessor :remember_token
    before_create :remember
    has_secure_password
    
    def remember
      self.remember_token = User.new_token
      update_attribute(:remember_digest, User.digest(remember_token))
    end

    # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  
    def User.new_token
     Digest::SHA1.hexdigest SecureRandom.urlsafe_base64.to_s
    end
    
    # Forgets a user.
  def forget
    update_attribute(:remember_digest, nil)
  end
end
