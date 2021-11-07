class ContactsController < ApplicationController
    def new
        @contact = Contact.new
    end

    def create
        @contact = Contact.new
        if @content.save
            flash,note[:notice] = "Your message was successfully sent!"
            ContactMailer.notify(@contact).deliver_letter
        else
            flash.now[:notice] = "Your message was fail to sent!"
        end
    end

    def contact_params
        params.require(:contact).permit(:name, :email, :content)
    end
end
