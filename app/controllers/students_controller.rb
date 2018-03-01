class StudentsController < ApplicationController
  def new
    @student = Student.new
    @placeholder_fname = 'Tap Sum'
    @placeholder_lname = 'Bong'
    @placeholder_wyr = 'Go Bears!'
  end

  def create
    # Hint: params??

    # YOUR CODE HERE
    # render plain: params[:teacher].inspect
    @student = Student.new(student_params)
    @student.save

    # This line is explicitly declaring that this controller method should render/serve the
    # 'views/teachers/show.html.erb' view. Otherwise, the controller would try to look for a 
    # 'views/teachers/create.html.erb' view file which we do not have. 
    # By convention, create is associated with a POST/PUT method while show is associated with the GET HTTP method
    # so the result after a "create" (C in CRUD) is a show.
    render 'show'
  end

  def show
    @student = Student.find(params[:id])
  end

  private
    def student_params
      params.permit(:first_name, :last_name, :wyr)
    end
end
