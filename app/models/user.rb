class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :cubes
  has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  validates :name, presence: true
  has_many :followed_users, through: :relationships, source: :followed
  has_many :delete_relationship, foreign_key: "followed_id", class_name: "Relationship", dependent: :destroy
  has_many :followers, through: :delete_relationship, source: :follower

  #is it following this user
  def following(follow_user)
  	self.relationships.find_by_followed_id(follow_user.id)
  end

  def follow(follow_user)
  	self.relationships.create(followed_id: follow_user.id)
  end

  def unfollows(follow_user)
  	self.relationships.create(followed_id: follow_user.id).destroy
  end

end