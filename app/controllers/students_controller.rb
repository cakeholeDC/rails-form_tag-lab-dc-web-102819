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
  	# byebug
  	# student = Student.create(params[:student])
  	student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
  	redirect_to student_path(student)
  end

# private

# def secure_student_params
	
# end

end
