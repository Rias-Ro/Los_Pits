class ClientesController < ApplicationController
    def index
      @clientes = Cliente.all
    end
  
    def show
      @cliente = Cliente.find(params[:id])
    end
  
    def new
      @cliente = Cliente.new
    end
  
    def create
      @cliente = Cliente.new(cliente_params)
      
      if @cliente.save
        redirect_to @cliente, notice: 'Cliente creado exitosamente.'
      else
        render :new
      end
    end
  
    def edit
      @cliente = Cliente.find(params[:id])
    end
  
    def update
      @cliente = Cliente.find(params[:id])
      if @cliente.update(cliente_params)
        redirect_to @cliente, notice: 'Cliente actualizado exitosamente.'
      else
        render :edit
      end
    end
  
    def destroy
      @cliente = Cliente.find(params[:id])
      @cliente.destroy
      redirect_to clientes_url, notice: 'Cliente eliminado exitosamente.'
    end
  
    private
  
    def cliente_params
      params.require(:cliente).permit(:rut_cliente, :correo_cliente, :password_cliente, :nombre_cliente, :apellido_cliente)
    end
end
  