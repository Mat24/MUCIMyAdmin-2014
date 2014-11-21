class ModuloRemitentesController < ApplicationController
  before_action :set_modulo_remitente, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json
  def index
    @modulo_remitentes = ModuloRemitente.all
    respond_with(@modulo_remitentes)
  end

  def show
    respond_with(@modulo_remitente)
  end

  def new
    @modulo_remitente = ModuloRemitente.new
    respond_with(@modulo_remitente)
  end

  def edit
  end

  def create
    @modulo_remitente = ModuloRemitente.new(modulo_remitente_params)
    @modulo_remitente.save
    respond_with(@modulo_remitente)
  end

  def update
    @modulo_remitente.update(modulo_remitente_params)
    respond_with(@modulo_remitente)
  end

  def destroy
    @modulo_remitente.destroy
    respond_with(@modulo_remitente)
  end

  private
    def set_modulo_remitente
      @modulo_remitente = ModuloRemitente.find(params[:id])
    end

    def modulo_remitente_params
      params.require(:modulo_remitente).permit(:paciente_id, :nombre, :nombre_entidad, :tipo_entidad, :cargo, :ciudad, :departamento, :direccion, :telefono, :email, :fecha_solicitud)
    end
end
