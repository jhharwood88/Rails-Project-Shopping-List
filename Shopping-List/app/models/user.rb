class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:omniauthable

    validates :username, presence: true
    validates :username, uniqueness: true

    has_many :lists
    has_many :items, through: :lists

 #  	def self.current_user_lists
 #  		binding.pry
	#   @user = current_user

	#   @lists = @user.lists.where(user_id: @user.id)
	#   @lists
	# end

end

