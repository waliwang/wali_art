class ContactsController < ApplicationController
    def index
        @contacts = Contact.all
    end
    def new
<<<<<<< HEAD
        @contact = Contact.new
=======
        @contacts = Contact.new
>>>>>>> ff9c47e41fcd8d524ecdba3f0fcd75e298a6ba53
    end

    def create
        @contacts = Contact.new
        if @content.save
            flash,now[:notice] = "Your message was successfully sent!"
            ContactMailer.notify(@contact).deliver_letter
        else
            flash.now[:notice] = "Your message was fail to sent!"
        end
    end

    def contact_params
        params.require(:contact).permit(:name, :email, :content)
    end
end
