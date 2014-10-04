class Project < ActiveRecord::Base
  belongs_to :user
  #has_many :invoices
  #has_many :messages
  #has_one :contract
end
