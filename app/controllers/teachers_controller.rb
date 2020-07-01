class TeachersController < ApplicationController
  def index
  end

  def show
    @teacher = Teacher.find(params[:id])
    @subjects = show_subjects(@teacher)
  end

  def new
  end
  
  def create
    @new_teacher = Teacher.new(name: params[:name])
    @new_teacher.save
    redirect_to root_path
  end

  def edit
    @edit_teacher = Teacher.find(params[:id])
  end

  def update
    @edit_teacher = Teacher.find(params[:id])
    @edit_teacher.update(name: params[:teacher][:name])
    redirect_to root_path
  end

  private
    def show_subjects(teacher)
      subjects = Array.new
      teacher.subjects.each do |subject|
        subjects.push(subject[:name])
      end
      subjects.uniq
    end
end
