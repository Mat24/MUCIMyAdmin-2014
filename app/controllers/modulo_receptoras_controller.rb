class ModuloReceptorasController < ApplicationController
  before_action :set_modulo_receptora, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json
  def index
    @modulo_receptoras = ModuloReceptora.all
    respond_with(@modulo_receptoras)
  end

  def show
    respond_with(@modulo_receptora)
  end

  def new
    @modulo_receptora = ModuloReceptora.new
    respond_with(@modulo_receptora)
  end

  def edit
  end

  def create
    @modulo_receptora = ModuloReceptora.new(modulo_receptora_params)
    @modulo_receptora.save
    respond_with(@modulo_receptora)
  end

  def update
    @modulo_receptora.update(modulo_receptora_params)
    respond_with(@modulo_receptora)
  end

  def destroy
    @modulo_receptora.destroy
    respond_with(@modulo_receptora)
  end

  private
    def set_modulo_receptora
      @modulo_receptora = ModuloReceptora.find(params[:id])
    end

    def modulo_receptora_params
      params.require(:modulo_receptora).permit(:paciente_id, :nombre_entidad, :tipo_entidad, :nombre_receptor, :cargo, :ciudad, :departamento, :direccion, :telefono, :email, :fecha_recepcion, :fecha_valoracion, :fecha_elaboracion, :fecha_notificacion, :numero_dictamen)
    end
end
