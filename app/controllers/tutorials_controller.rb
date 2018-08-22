class TutorialsController < ApplicationController
    before_action :set_tutorial, only: [:show, :update, :destroy]
  
    def index
      @tutorialls = Tutorial.all
      json_response(@tutorialls)
    end
  
    def create
      user_estudiante = User.find(params[:user_estudiante])
      user_docente = User.find(params[:user_docente])
      place_tutorial = Place.find(params[:place_tutorial])
      subject_tutorial = Subject.find(params[:subject_tutorial])

      to_insert = tutorial_params
      to_insert[:user_estudiante] = user_estudiante
      to_insert[:user_docente] = user_docente
      to_insert[:place_tutorial] = place_tutorial
      to_insert[:subject_tutorial] = subject_tutorial

      puts to_insert
      @tutorial = Tutorial.create!(to_insert)
      json_response(@tutorial, :created)
    end
  
    def show
      json_response(@tutoriall)
    end
  
    def update
      @tutorial.update(tutorial_params)
      head :no_content
    end
  
    def destroy
      @tutorial.destroy
      head :no_content
    end
  
    private
  
    def tutorial_params
      # whitelist params
      params.permit(:user_estudiante, :user_docente, :nombre, :modalidad, :fecha, :descripcion, :presupuesto, :subject_tutorial,:place_tutorial)
    end
  
    def set_tutorial
      @tutoriall = Tutorial.find(params[:id])
    end
end
