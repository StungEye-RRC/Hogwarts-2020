class TeachersController < ApplicationController
  def index
    @teachers = Teacher.includes(:house).order(:name)
  end

  def show
    @teacher = Teacher.includes(:house).find(params[:id])
  end
end
