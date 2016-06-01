class User < ActiveRecord::Base
  acts_as_voter
  has_many :questions, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  has_many :visits, :dependent => :destroy
  has_many :units, :dependent => :destroy
  has_many :courses, :dependent => :destroy
  has_one :profile, inverse_of: :user, :dependent => :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
         before_create :build_default_profile

  private
    def build_default_profile    
      build_profile
      true 
    end

end
