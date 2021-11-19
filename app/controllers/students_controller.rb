class StudentsController < ApplicationController

  def index
    students = Student.all.filter do |student| 
      student.to_s.match? /#{params[:name]}/i
    end
    render json: students
  end

  def show
    render json: Student.find(params[:id])
  end

end
