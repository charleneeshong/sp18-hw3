class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
    @placeholder_course = '186'
  end

  def create
    # Hint: params??

    # YOUR CODE HERE
    # render plain: params[:teacher].inspect
    @teacher = Teacher.new(teacher_params)
    @teacher.save

    # This line is explicitly declaring that this controller method should render/serve the
    # 'views/teachers/show.html.erb' view. Otherwise, the controller would try to look for a 
    # 'views/teachers/create.html.erb' view file which we do not have. 
    # By convention, create is associated with a POST/PUT method while show is associated with the GET HTTP method
    # so the result after a "create" (C in CRUD) is a show.
    render 'show'
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  private
    def teacher_params
      params.permit(:full_name, :course_name, :grade_level)
    end
end
