class Form < ActiveRecord::Base
  validates :first_name, :presence => {:message => 'The name cant be blank.'}
end
