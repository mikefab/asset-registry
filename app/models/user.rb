class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 belongs_to :org
 before_validation :set_org
 def set_org
    if !self.org then
      self.org_id = Org.where(name: 'Unassigned')[0].id
    end
 end
end
