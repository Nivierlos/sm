class CoursesController < ApplicationController
  def index
    @page_title = 'Available Modules'
    @courses = Course.group("department_id" && "level")
    @department = Department.all
    @user = User.all
  end

  def show
    @page_title = 'Modules info'
    @courses = Course.all
    @department = Department.all
    @user = User.all
  end
end
