class ArtefatosController < ApplicationController
  before_action :set_artefato, only: [:show, :edit, :update, :destroy]

  # GET /artefatos
  # GET /artefatos.json
  def index
    @artefatos = Artefato.all
  end

  # GET /artefatos/1
  # GET /artefatos/1.json
  def show
  end

  # GET /artefatos/new
  def new
    @artefato = Artefato.new
  end

  # GET /artefatos/1/edit
  def edit
  end

  # POST /artefatos
  # POST /artefatos.json
  def create
    @artefato = Artefato.new(artefato_params)

    respond_to do |format|
      if @artefato.save
        format.html { redirect_to @artefato, notice: 'Artefato was successfully created.' }
        format.json { render :show, status: :created, location: @artefato }
      else
        format.html { render :new }
        format.json { render json: @artefato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artefatos/1
  # PATCH/PUT /artefatos/1.json
  def update
    respond_to do |format|
      if @artefato.update(artefato_params)
        format.html { redirect_to @artefato, notice: 'Artefato was successfully updated.' }
        format.json { render :show, status: :ok, location: @artefato }
      else
        format.html { render :edit }
        format.json { render json: @artefato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artefatos/1
  # DELETE /artefatos/1.json
  def destroy
    @artefato.destroy
    respond_to do |format|
      format.html { redirect_to artefatos_url, notice: 'Artefato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artefato
      @artefato = Artefato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artefato_params
      params.require(:artefato).permit(:usuario, :historia, :titulo, :coordenada, :descricao, :e_pago)
    end
end
