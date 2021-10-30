class CurriculumvitaesController < ApplicationController
    before_action :find_curriculumvitae, only: [:edit, :update, :destroy, :show]

    def index
        @curriculumvitaes = Curriculumvitae.all
    end

    def new
        @curriculumvitae = Curriculumvitae.new
    end

    def create
        @curriculumvitae = Curriculumvitae.new(curriculumvitae_params)
        
        if @curriculumvitae.save
            #成功
            redirect_to curriculumvitaes_path, notice: "新增關於我成功！"
        else
            #失敗
            render :new
        end
    end

    def edit
    end

    def show
    end

    def update
        if @curriculumvitae.update(curriculumvitae_params)
            redirect_to curriculumvitaes_path, notice: "作品資料更新成功！"
        else
            render :edit
        end
    end
    

    def destroy
        @curriculumvitae.destroy if @curriculumvitae
        redirect_to curriculumvitaes_path, notice: "作品資料已刪除！"
        # render html: "destroy"
    end

    private
    def curriculumvitae_params
        params.require(:curriculumvitae).permit(:name, :education, :description, :url)
    end

    def find_curriculumvitae
        @curriculumvitae = Curriculumvitae.find_by(id: params[:id])
    end

end
