class ModuloRolsController < ApplicationController
  before_action :set_modulo_rol, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    @modulo_rols = ModuloRol.all
    respond_with(@modulo_rols)
  end

  def show
    respond_with(@modulo_rol)
  end

  def new
    @modulo_rol = ModuloRol.new
    respond_with(@modulo_rol)
  end

  def edit
  end

  def create
    @modulo_rol = ModuloRol.new(modulo_rol_params)
    @modulo_rol.save
    respond_with(@modulo_rol)
  end

  def update
    @modulo_rol.update(modulo_rol_params)
    respond_with(@modulo_rol)
  end

  def destroy
    @modulo_rol.destroy
    respond_with(@modulo_rol)
  end

  private
    def set_modulo_rol
      @modulo_rol = ModuloRol.find(params[:id])
    end

    def modulo_rol_params
      params.require(:modulo_rol).permit(:paciente_id, :institucion, :nivel_grado, :direccion, :telefono, :email, :observaciones)
    end
end
