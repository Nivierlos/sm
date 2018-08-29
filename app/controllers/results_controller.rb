class ResultsController < ApplicationController
  def index
    if params[:search]
      @result = Result.all
      @page_title = 'Marks'
      @results = Result.all
      @student = Student.all
      @department = Department.all
    end
    
  end

  def show
    @page_title = 'Marks for:'
    @results = Result.where("student_id like?", "%#{params[:student_id]}%")
    @department = Department.all
    @student = Student.all

    respond_to do |format|
      format.html {  }
      format.pdf do
        pdf = Prawn::Document.new
        pdf.text "hello prawn"
        send_data pdf.render, 
        filename: 'marks.pdf', 
        type: 'application/pdf', 
        disposition: "inline"
      end
    end
  end
end
