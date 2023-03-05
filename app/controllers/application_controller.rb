class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  # Fetch all users from the database
  get '/users' do
    user = User.all
    user.to_json
  end

  # Add a new user to the database
  post '/users' do
    user = User.create(params)
  end



# Fetch all projects from the database
  get '/projects' do
    project = Project.all
    project.to_json
  end

  # Add a new project to the database
  post '/projects' do
    project = Project.create(params)
    project.to_json
  end

 # Fetch project by :id from the database
  get '/projects/:id' do
    project = Project.find(params[:id])
    project.to_json
  end

   # Update project data from the database
   patch '/projects/:id' do
    project = Project.find(params[:id])
    project.update(
      project_title: params[:project_title],
      project_description: params[:project_description],
      project_language: params[:project_language]
    )
    project.to_json
  end
  

  # Delete a project by :id from the database
  delete '/projects/:id' do
    project = Project.find(params[:id])
    project.destroy
    project.to_json
  end
  
 # Fetch all skills from the database
  get '/skills' do
    skill = Skill.all
    skill.to_json
  end

  # Add a new skill to the database
  post '/skills' do
    skill = Skill.create(params)
    skill.to_json
  end

   # Update a skill by :id from the database
  patch '/skills/:id' do
    skill = Skill.find(params[:id])
    skill.update(
      skill_name: params[:skill_name]
    )
    skill.to_json
  end

# Delete a skill by :id from the database
  delete '/skills/:id' do
    skill = Skill.find(params[:id])
    skill.destroy
    skill.to_json
  end

end






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


