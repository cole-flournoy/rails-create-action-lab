class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end
 
  def new
  end

  def create
    student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to action: "show", id: student.id
  end

  def show
    @student = Student.find(params[:id])
  end



end
