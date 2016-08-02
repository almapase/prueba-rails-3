class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_songs
  has_many :songs, through: :user_songs

  enum role: [:guest, :logged, :admin]

  before_save :default_role

  def default_role
   self.role ||= 0
  end
end
