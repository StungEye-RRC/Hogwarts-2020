class StudentsController < ApplicationController
  # GET /students
  def index
    # The .includes solves the N+1 query problem
    # that was present in the view when we asked for
    # each student's house to be displayed.
    @students = Student.includes(:house).order(:name)
  end

  # GET /students/:id   ====> params[:id]
  def show
    @student = Student.includes(:house).find(params[:id])
  end
end
