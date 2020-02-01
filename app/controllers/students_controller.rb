class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = Student.create(first_name: student_params[:first_name], last_name: student_params[:last_name])
    redirect_to(@student)
  end

  def student_params
    params.permit(:first_name, :last_name)
  end

end
