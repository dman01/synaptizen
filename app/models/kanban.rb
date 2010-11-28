class Kanban < ActiveRecord::Base
  validates :title, :description, :presence=>true
  validates_uniqueness_of(:title, :message => "That name has already been take by another kanban board")
end
