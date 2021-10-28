class IllustrationsController < ApplicationController
    def index
        @illustrations = Illustration.all
    end

    def destroy
        render html: "destroy"
    end
end
