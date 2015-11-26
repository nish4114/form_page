class FormsController < ApplicationController
  def new
    @form = Form.new
  end

  def create
    p params
  @form = Form.create(form_params)
    if @form.save
      redirect_to forms_path
    end
  end

  def index

  end
private

  def form_params
   params.require(:form).permit(:first_name, :last_name, :email, :contact_no, :gender, :age, :work_experience,
                                :highest_degree, :address, :city, :state, :country, :pincode,
                                :birth_date, :type_job, :looking_job => [], :week_availability => [],
                                :weekend_availability => [])
    end
end
