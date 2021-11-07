class ContactMailer < ApplicationMailer
    default :form => "瓦力工作室 <walistudio2015@gmail.com>"

    def say_hello_to(contact)
        @contact = contact
        mail to:@contact.email, subject:"你好！"
    end
end
