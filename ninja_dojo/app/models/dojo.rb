class Dojo < ActiveRecord::Base
    has_many :ninjas

    validates :name, :city, presence: true
    validates :state, length: { in: 2..2}
end


#* delete = Dojo.all -> delete.delete_all
#* dojo1 = Dojo.create(name: "", city: "", state: "")
#* ninja1,2,3 = Ninja.create(first_name: "", last_name: "", dojo: Dojo.first) 
#* ninja4,5,6 = Ninja.create(first_name: "", last_name: "", dojo: Dojo.second) 
#* ninja7,8,9 = Ninja.create(first_name: "", last_name: "", dojo: Dojo.third) 
#* ninja.dojo = Dojo.find(1)