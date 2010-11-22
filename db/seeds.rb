# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Kanban.delete_all
Kanban.create(:title=>"Integreatly", :description =>%{This is the kick ass kanban board for Integreatly that will carry us towards a better future})