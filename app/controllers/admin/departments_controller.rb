class Admin::DepartmentsController < Admin::ApplicationController

  before_action :verify_logged_in
  def new
    @page_title = 'Add new Department'
    @department = Department.new
  end

  def create
    @department = Department.new(department_params)
    if @department.save
      flash[:notice] = 'Department created!'
    redirect_to admin_departments_path
  else
    render 'new'
  end
  end

  def edit
    @page_title = 'Edit Department'
    @department = Department.find(params[:id])
  end

  def update
    @department = Department.find(params[:id])
   if  @department.update(department_params)
      flash[:notice] = 'Department updated!'
       redirect_to admin_departments_path
     else
      render 'edit'
    end
  end

  def destroy
    @department = Department.find(params[:id])
    @department.destroy
    flash[:notice] = 'Department revomed'

    redirect_to admin_departments_path
  end

  def index
    @page_title = ' Manage Departments'
    @departments = Department.all
  end

  def sindex
  end

  def rindex
    @department = Department.find(params[:id])
    @departments = Department.all
    @results = @department.results.group("level")
    #@students = @department.students.group("level")
    #@courses = @department.courses.group("level")
  end

  def cindex
  end

  def show
    @department = Department.find(params[:id])
    @departments = Department.all
    @results = @department.results.group("level")
  end

  def sshow
  end

  def rshow
  end

  def cshow
  end

  def department_params 
    params.require(:department).permit(:name, :full_name)
  end
end
