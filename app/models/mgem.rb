class Mgem < ActiveRecord::Base
  attr_accessible :name, :description, :author, :website, :protocol, :repository
end
