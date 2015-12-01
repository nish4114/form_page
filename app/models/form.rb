class Form < ActiveRecord::Base
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => 'That does not look like an email'
  validates_format_of :contact_no, :with => /\d{10}/, :message => 'Please enter 10 digits and without code'
end
