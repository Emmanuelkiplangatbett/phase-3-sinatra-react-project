class Project < ActiveRecord::Base
    # enum status: [ :CREATED, :ONGOING, :COMPLETED, :CANCELLED ]
    belongs_to :users
 end
