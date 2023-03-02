class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  post "/projects/create" do
    data = request.body.read
    data.to_s
   
  end
end

#   # define routes
# get '/' do
#   erb :index
# end

# get '/register' do
#   erb :register
# end

# post '/register' do
#   # handle user registration
# end

# get '/login' do
#   erb :login
# end

# post '/login' do
#   # handle user login
# end

# get '/logout' do
#   # handle user logout
# end

# get '/dashboard' do
#   # handle user dashboard
# end

# get '/projects' do
#   # handle project listing
# end

# get '/projects/new' do
#   # handle new project form
# end

# post '/projects/new' do
#   # handle new project submission
# end

# get '/projects/:id/edit' do
#   # handle project edit form
# end

# post '/projects/:id/edit' do
#   # handle project update submission
# end

# post '/projects/:id/delete' do
#   # handle project deletion
# end

# get '/skills' do
#   # handle skill listing
# end

# get '/skills/new' do
#   # handle new skill form
# end

# post '/skills/new' do
#   # handle new skill submission
# end

# get '/skills/:id/edit' do
#   # handle skill edit form
# end

# post '/skills/:id/edit' do
#   # handle skill update submission
# end

# post '/skills/:id/delete' do
#   # handle skill deletion
# end
# # Home page
# require 'sinatra'
# require 'sinatra/activerecord'

# enable :sessions

# set :database_file, 'config/database.yml'

# # Models
# class User < ActiveRecord::Base
#   has_many :projects
#   has_many :skills
#   validates :email, presence: true, uniqueness: true
#   has_secure_password
# end

# class Project < ActiveRecord::Base
#   belongs_to :user
#   validates :title, presence: true
# end

# class Skill < ActiveRecord::Base
#   belongs_to :user
#   validates :name, presence: true
# end

# # Routes for user authentication
# get '/login' do
#   erb :login
# end

# post '/login' do
#   user = User.find_by(email: params[:email])
  
#   if user && user.authenticate(params[:password])
#     session[:user_id] = user.id
#     redirect '/portfolio'
#   else
#     @error = "Invalid email or password."
#     erb :login
#   end
# end

# get '/logout' do
#   session.clear
#   redirect '/login'
# end

# # Routes for portfolio management
# get '/portfolio' do
#   @user = User.find(session[:user_id])
#   @projects = @user.projects.all
#   @skills = @user.skills.all
  
#   erb :portfolio
# end

# post '/projects' do
#   user = User.find(session[:user_id])
#   project = Project.new(title: params[:title], description: params[:description], user: user)
  
#   if project.save
#     redirect '/portfolio'
#   else
#     @error = "Unable to create project."
#     erb :portfolio
#   end
# end

# put '/projects/:id' do
#   project = Project.find(params[:id])
  
#   if project.update(title: params[:title], description: params[:description])
#     redirect '/portfolio'
#   else
#     @error = "Unable to update project."
#     erb :portfolio
#   end
# end

# delete '/projects/:id' do
#   project = Project.find(params[:id])
  
#   if project.destroy
#     redirect '/portfolio'
#   else
#     @error = "Unable to delete project."
#     erb :portfolio
#   end
# end

# post '/skills' do
#   user = User.find(session[:user_id])
  
#   if user.skills.count < 10
#     skill = Skill.new(name: params[:name], user: user)
    
#     if skill.save
#       redirect '/portfolio'
#     else
#       @error = "Unable to create skill."
#       erb :portfolio
#     end
#   else
#     @error = "You have reached the maximum number of skills."
#     erb :portfolio
#   end
# end

# put '/skills/:id' do
#   skill = Skill.find(params[:id])
  
#   if skill.update(name: params[:name])
#     redirect '/portfolio'
#   else
#     @error = "Unable to update skill."
#     erb :portfolio
#   end
# end

# delete '/skills/:id' do
#   skill = Skill.find(params[:id])
  
#   if skill.destroy
#     redirect '/portfolio'
#   else
#     @error = "Unable to delete skill."
#     erb :portfolio
#   end
# end


# end
