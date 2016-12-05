class IventariosController < ApplicationController
  before_action :set_iventario, only: [:show, :edit, :update, :destroy]

  # GET /iventarios
  # GET /iventarios.json
  def index
    @iventarios = Iventario.all
  end

  # GET /iventarios/1
  # GET /iventarios/1.json
  def show
  end

  # GET /iventarios/new
  def new
    @iventario = Iventario.new
  end

  # GET /iventarios/1/edit
  def edit
  end

  # POST /iventarios
  # POST /iventarios.json
  def create
    @usuario = Usuario.find(params[:usuario_id])
    @iventario = @usuario.iventario.create(iventario_params)
    redirect_to usuario_path(@usuario)
    #@iventario = Iventario.new(iventario_params)

    respond_to do |format|
      if @iventario.save
        format.html { redirect_to @iventario, notice: 'Iventario was successfully created.' }
        format.json { render :show, status: :created, location: @iventario }
      else
        format.html { render :new }
        format.json { render json: @iventario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iventarios/1
  # PATCH/PUT /iventarios/1.json
  def update
    respond_to do |format|
      if @iventario.update(iventario_params)
        format.html { redirect_to @iventario, notice: 'Iventario was successfully updated.' }
        format.json { render :show, status: :ok, location: @iventario }
      else
        format.html { render :edit }
        format.json { render json: @iventario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iventarios/1
  # DELETE /iventarios/1.json
  def destroy
    @iventario.destroy
    respond_to do |format|
      format.html { redirect_to iventarios_url, notice: 'Iventario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iventario
      @iventario = Iventario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iventario_params
      params.require(:iventario).permit(:agua, :comida, :remedio, :municao, :usuario_id)
    end
end
