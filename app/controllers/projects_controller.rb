require 'time'
class ProjectsController < ApplicationController
	before_action :require_login, only: [:new, :create]

	def index
		@projects = Project.all
		@projects = @projects.order(:end_date)
	end

	def show
		@project = Project.find(params[:id])
	end

	def new
		@project = Project.new
		@project.rewards.build
	end

	def create
		@project = Project.new
		@project.title = params[:project][:title]
		@project.description = params[:project][:description]
		@project.goal = params[:project][:goal]
		@project.start_date = params[:project][:start_date]
		@project.end_date = params[:project][:end_date]
		@project.image = params[:project][:image]

		if @project.save
			redirect_to projects_url
		else
			render :new
		end
	 end



	 def time_left_until_deadline
		 @current = Time.now
		 @time_to_deadline = project.end_date.Time.parse -

			# @time_to_deadline = @project.end_date - Date.now (pseudocode)
				#close the project
				# § As a user, when I go to a project’s page,
				# it should tell me how much time is left until the funding
				# deadline (like it does on the project index currently) N
	 end
end
