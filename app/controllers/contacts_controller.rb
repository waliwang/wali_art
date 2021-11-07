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
            # 寄信
            ContactMailer.say_hello_to(@contact).deliver_now
            redirect_to @contact, notice: '你有一封新留言！'
          else
            render :new
          end

    end

    def show
    end
      
    def destroy
        @contact.destroy if @contact
        redirect_to contacts_path, notice: "信件已刪除！"
        # render html: "destroy"
    end
  

    def contact_params
        params.require(:contact).permit(:name, :email, :content)
    end
end
