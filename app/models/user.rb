class User < ActiveRecord::Base
  attr_accessible :name, :emp_id, :dept_id 
  validates :emp_id, :presence => true
  validates :name, :presence => true,
                   :length => { :maximum => 50 }
end
