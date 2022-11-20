class StudentsController < ApplicationController

    def index
        all_students = Student.all 
        render json: all_students
    end

    def grades
        grades = Student.order("grade DESC")
        render json: grades
    end

end
