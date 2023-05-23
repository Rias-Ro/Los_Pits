class VehiculosController < ApplicationController
    def index
      @vehiculos = Vehiculo.all
    end
  
    def new
        @vehiculo = Vehiculo.new(rut_cliente: params[:rut_cliente])
    end
      
    def create
        @vehiculo = Vehiculo.new(vehiculo_params)
        if Vehiculo.exists?(patente_vehiculo: @vehiculo.patente_vehiculo)
          flash.now[:error] = 'La patente ya existe.'
          render :new
        elsif @vehiculo.save
          redirect_to vehiculos_path, notice: 'Vehículo creado exitosamente.'
        else
          render :new
        end
    end
  
    def edit
      @vehiculo = Vehiculo.find(params[:id])
    end
  
    def update
      @vehiculo = Vehiculo.find(params[:id])
      if @vehiculo.update(vehiculo_params)
        redirect_to vehiculos_path, notice: 'Vehículo actualizado exitosamente.'
      else
        render :edit
      end
    end

    def show
        @vehiculo = Vehiculo.find(params[:id])
    end

  
    def destroy
      @vehiculo = Vehiculo.find(params[:id])
      @vehiculo.destroy
      redirect_to vehiculos_path, notice: 'Vehículo eliminado exitosamente.'
    end
  
    private
  
    def vehiculo_params
        params.require(:vehiculo).permit(:patente_vehiculo, :modelo_vehiculo, :color_vehiculo, :rut_cliente)
    end
end
  