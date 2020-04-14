class User < ActiveRecord::Base
    validates :first_name, :last_name, presence: true, length: { minimum: 2 }
    validates_numericality_of :age, less_than: 150, greater_than: 10
end


#* user = User.new
#* User.all
#* User.first
#* User.last
#* User.order(first_name: :desc)
#* user_to_update = User.find(3).... user_to-update.last_name = "Patty".... user_to_update.save
#* User.find(1).destroy.save