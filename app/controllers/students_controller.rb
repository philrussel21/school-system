class StudentsController < ApplicationController
  def index
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end
  
  def create
    @new_student = Student.new(name: params[:name])
    @new_student.save
    redirect_to root_path
  end

  def edit
    @edit_student = Student.find(params[:id])
  end

  def update
    @edit_student = Student.find(params[:id])
    @edit_student.update(name: params[:student][:name])
    redirect_to root_path
  end
  
end
