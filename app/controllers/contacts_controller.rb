class ContactsController < ApplicationController
    def index
        @contacts = Contact.all
    end
    def new
        @contact = Contact.new
    end

    def create
        @contact = Contact.new(contact_params) 
        if @contact.save
            flash.now[:notice] = "Your message was successfully sent!"
            ContactMailer.notify(@contact).deliver_later
          else
            flash.now[:notice] = "Your message was fail to sent!"
          end
      
    end

    def contact_params
        params.require(:contact).permit(:name, :email, :content)
    end
end
