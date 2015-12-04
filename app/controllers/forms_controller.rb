class FormsController < ApplicationController
  def new
    @form = Form.new
  end

  def create
    p params
    number_to_send_to = params[:form][:contact_no]
    p number_to_send_to
    twilio_sid = "AC49d1afb324109edf5638a687ea7c2dcc"
    twilio_token = "a87772c81432ac1dfa07528ce1f003c4"
    twilio_phone_number = "719-428-4401"
  @form = Form.create(form_params)
    if @form.save
     begin
      @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

      @twilio_client.account.sms.messages.create(
          :from => "+1#{twilio_phone_number}",
          :to => "+91#{number_to_send_to}",
          :body => "Thank You for registering with JobzGo, We will contact you very soon"
      )
     rescue Twilio::REST::RequestError => e
       puts e.message
     end
     begin
      FormMailer.registration_mail(@form).deliver
     rescue Net::SMTPAuthenticationError, Net::SMTPServerBusy, Net::SMTPSyntaxError, Net::SMTPFatalError, Net::SMTPUnknownError => e
       puts e.message
     end
      redirect_to forms_path

  else
    flash[:error] = @form.errors
    render :new
    end
  end

  def index

  end
private

  def form_params
   params.require(:form).permit(:first_name, :last_name, :email, :contact_no, :gender, :age, :work_experience,
                                :highest_degree, :address, :type_job, :looking_job => [], :week_availability => [],
                                :weekend_availability => [])
    end
end
