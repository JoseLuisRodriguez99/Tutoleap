class QualificationsController < ApplicationController
    before_action :set_qualification, only: [:show, :update, :destroy]
  
    def index
      @qualifications = Qualification.all
      json_response(@qualifications)
    end
  
    def create
      user_estudiante = User.find(params[:user_estudiante])
      user_docente = User.find(params[:user_docente])

      to_insert = qualification_params
      to_insert[:user_estudiante] = user_estudiante
      to_insert[:user_docente] = user_docente

      puts to_insert
      @qualification = Qualification.create!(to_insert)
      json_response(@qualification, :created)
    end
  
    def show
      json_response(@qualifications)
    end
  
    def update
      @qualification.update(qualification_params)
      head :no_content
    end
  
    def destroy
      @qualification.destroy
      head :no_content
    end
  
    private
  
    def qualification_params
      # whitelist params
      params.permit(:user_estudiante, :user_docente, :valor, :descripcion)
    end
  
    def set_qualification
      @qualificationes = Qualification.find(params[:id])
    end
  end