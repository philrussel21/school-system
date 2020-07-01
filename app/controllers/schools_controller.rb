class SchoolsController < ApplicationController
  def home
    #show all students, teachers and subjects
    @all_students = Student.all
    @all_teachers = Teacher.all
    @all_subjects = all_subjects
  end


  private
  def all_subjects
    all_subjects = Array.new
    Subject.all.each do |subj|
      all_subjects.push(subj[:name]) if !all_subjects.include?(subj[:name])
    end
    all_subjects
  end
end