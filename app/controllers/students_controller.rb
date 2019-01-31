class StudentsController < ApplicationController
  def index
    @students = Student.includes(:house).order(:name)
  end

  def show
    @student = Student.includes(:house).find(params[:id])
  end
end
