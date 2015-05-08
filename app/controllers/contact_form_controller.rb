class ContactFormController < ApplicationController
  def new
  	@contact_form = ContactForm.new
  end

  def create
  	begin
  		@contact_form = ContactForm.new([:contact_form])
  		@contact_form.request = request
  		if @contact_form.deliver
  			flash.now[:notice] = 'Thank you for you Application!'
  		else
  			render :new
  		end
  	rescue ScriptError
  		flash[:error] = 'Sorry, this application was not delivered'
  	end
  end
end
