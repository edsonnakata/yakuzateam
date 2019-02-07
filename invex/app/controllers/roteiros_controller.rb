class RoteirosController < ApplicationController
  before_action :set_roteiro, only: [:show, :edit, :update, :destroy]

  # GET /roteiros
  # GET /roteiros.json
  def index
    @roteiros = Roteiro.all
  end

  # GET /roteiros/1
  # GET /roteiros/1.json
  def show
  end

  # GET /roteiros/new
  def new
    @roteiro = Roteiro.new
  end

  # GET /roteiros/1/edit
  def edit
  end

  # POST /roteiros
  # POST /roteiros.json
  def create
    @roteiro = Roteiro.new(roteiro_params)

    respond_to do |format|
      if @roteiro.save
        format.html { redirect_to @roteiro, notice: 'Roteiro was successfully created.' }
        format.json { render :show, status: :created, location: @roteiro }
      else
        format.html { render :new }
        format.json { render json: @roteiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roteiros/1
  # PATCH/PUT /roteiros/1.json
  def update
    respond_to do |format|
      if @roteiro.update(roteiro_params)
        format.html { redirect_to @roteiro, notice: 'Roteiro was successfully updated.' }
        format.json { render :show, status: :ok, location: @roteiro }
      else
        format.html { render :edit }
        format.json { render json: @roteiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roteiros/1
  # DELETE /roteiros/1.json
  def destroy
    @roteiro.destroy
    respond_to do |format|
      format.html { redirect_to roteiros_url, notice: 'Roteiro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roteiro
      @roteiro = Roteiro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roteiro_params
      params.require(:roteiro).permit(:usuario, :historia, :titulo)
    end
end
