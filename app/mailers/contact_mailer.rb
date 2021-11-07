class ContactMailer < ApplicationMailer
    default :form => "瓦力工作室 <walistudio2015@gmail.com>"

    def say_hello_to(contact)
        @contact = contact
        @abc = "123"
        mail to: "larts393@gmail.com", subject: "你好！"
    end
end
