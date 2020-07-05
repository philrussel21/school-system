class SubjectsController < ApplicationController
  def index
  end

  def show
    @subject = params[:name]
    @teachers = subject_teachers(params[:name])
    @students = subject_students(params[:name])
  end

  def new
    @new_subject = Subject.new
    @all_teachers = Teacher.all
    @all_students = Student.all
  end

  def create
    @new_subject = Subject.new(name: params[:subject][:name])
    subj_teacher = Teacher.find(params[:subject][:teacher_id])
    subj_student = Student.find(params[:subject][:student_id])
    @new_subject.teacher = subj_teacher
    @new_subject.student = subj_student

    if @new_subject.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  # def edit
  #   @edit_subject = 
  # end

  # def update

  # end

  private

  # queries all Subjects that matches the name then extracts the name of the
  # teacher from each subject then pushed to a new array.
    def subject_teachers(subject)
      teachers = Array.new
      Subject.where(name: subject).each do |subj|
        teachers.push(subj.teacher.name)
      end
      teachers.uniq
    end

    # queries all Subjects that matches the name then extracts the name of the
    # student from each subject then pushed to a new array.
    def subject_students(subject)
      students = Array.new
      Subject.where(name: subject).each do |subj|
        students.push(subj.student.name)
      end
      students.uniq
    end
end
