class IllustrationsController < ApplicationController
    before_action :find_illustration, only: [:edit, :update, :destroy, :show]
    def index
        @illustrations = Illustration.all
    end

    


    private
    def find_illustration
        @illustration = Illustration.find_by(id: params[:id])
    end

end
