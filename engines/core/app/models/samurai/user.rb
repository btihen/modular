module Samurai
  class User < ApplicationRecord
    
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable

    scope :ordered, -> { order(created_at: :desc) }

    enum role: [:user, :vip, :admin]
    after_initialize :set_default_role, :if => :new_record?
  
    def set_default_role
      self.role ||= :user
    end

    # def admin?
    #   self.role == :user
    # end
  
  end
end
