require 'sinatra'

def username_for(firstname, lastname, middlename='')
    firstname[0] + (middlename[0]||='') + lastname[0,5]
end

get "/:lastname/:firstname" do
    firstname = params[:firstname]
    lastname = params[:lastname]
    username = username_for(firstname, lastname).downcase
    "#{firstname} #{lastname}'s username is #{username}"
end

get "/:lastname/:firstname/:middlename" do
    firstname = params[:firstname]
    lastname = params[:lastname]
    middlename = params[:middlename]
    username = username_for(firstname, lastname, middlename).downcase
    "#{firstname} #{middlename} #{lastname}'s username is #{username}"
end