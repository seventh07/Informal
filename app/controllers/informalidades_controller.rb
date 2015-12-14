class InformalidadesController < ApplicationController
  before_action :set_informalidade, only: [:show, :edit, :update, :destroy]

  # GET /informalidades
  # GET /informalidades.json
  def index
    @informalidades = Informalidade.all
  end

  # GET /informalidades/1
  # GET /informalidades/1.json
  def show
  end

  # GET /informalidades/new
  def new
    @informalidade = Informalidade.new
  end

  # GET /informalidades/1/edit
  def edit
  end

  # POST /informalidades
  # POST /informalidades.json
  def create
    @informalidade = Informalidade.new(informalidade_params)

    respond_to do |format|
      if @informalidade.save
        format.html { redirect_to @informalidade, notice: 'Informalidade was successfully created.' }
        format.json { render :show, status: :created, location: @informalidade }
      else
        format.html { render :new }
        format.json { render json: @informalidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /informalidades/1
  # PATCH/PUT /informalidades/1.json
  def update
    respond_to do |format|
      if @informalidade.update(informalidade_params)
        format.html { redirect_to @informalidade, notice: 'Informalidade was successfully updated.' }
        format.json { render :show, status: :ok, location: @informalidade }
      else
        format.html { render :edit }
        format.json { render json: @informalidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /informalidades/1
  # DELETE /informalidades/1.json
  def destroy
    @informalidade.destroy
    respond_to do |format|
      format.html { redirect_to informalidades_url, notice: 'Informalidade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_informalidade
      @informalidade = Informalidade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def informalidade_params
      params.require(:informalidade).permit(:titulo, :descricao, :prestador_id, :cliente_id)
    end
end
