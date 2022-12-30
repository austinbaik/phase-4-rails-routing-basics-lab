class StudentsController < ApplicationController

    def index
        students = Student.all

        render json: students  
    end


    def grades 
        grades = Student.all
        grades = grades.sort_by{ |g| g[:grade] }.reverse
        render json: grades
    end

end
