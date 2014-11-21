class ModuloCalificadasController < ApplicationController
  before_action :set_modulo_calificada, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    @modulo_calificadas = ModuloCalificada.all
    respond_with(@modulo_calificadas)
  end

  def show
    respond_with(@modulo_calificada)
  end

  def new
    @modulo_calificada = ModuloCalificada.new
    respond_with(@modulo_calificada)
  end

  def edit
  end

  def create
    @modulo_calificada = ModuloCalificada.new(modulo_calificada_params)
    @modulo_calificada.save
    respond_with(@modulo_calificada)
  end

  def update
    @modulo_calificada.update(modulo_calificada_params)
    respond_with(@modulo_calificada)
  end

  def destroy
    @modulo_calificada.destroy
    respond_with(@modulo_calificada)
  end

  private
    def set_modulo_calificada
      @modulo_calificada = ModuloCalificada.find(params[:id])
    end

    def modulo_calificada_params
      params.require(:modulo_calificada).permit(:paciente_id, :nombre_completo, :genero, :tipo_documento, :numero_identificacion, :fecha_nacimiento, :edad, :lugar_nacimiento, :estrato_economico, :nivel_ingresos, :etapa_ciclo_vital, :ciudad, :departamento, :direccion, :telefono, :email, :nivel_escolaridad, :estado_civil, :afiliacion, :motivo_calificacion)
    end
end
