class ScenesController < ApplicationController
  before_action :set_scene, only: [:show, :edit, :update, :destroy]
  before_action :set_history, only: [:show, :cont]

  # GET /scenes
  # GET /scenes.json
  def index
    @scenes = Scene.all
  end

  # GET /scenes/1
  # GET /scenes/1.json
  def show
    # raise("houahauohauo")
    @scene = Scene.all.where("history_id = #{params[:id]}")

  end

  # GET /scenes/new
  def new
    @scene = Scene.new
  end

  # GET /scenes/1/edit
  def edit
  end

  # POST /scenes
  # POST /scenes.json
  def create
    @scene = Scene.new(scene_params)

    respond_to do |format|
      if @scene.save
        format.html { redirect_to @scene, notice: 'Scene was successfully created.' }
        format.json { render :show, status: :created, location: @scene }
      else
        format.html { render :new }
        format.json { render json: @scene.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scenes/1
  # PATCH/PUT /scenes/1.json
  def update
    respond_to do |format|
      if @scene.update(scene_params)
        format.html { redirect_to @scene, notice: 'Scene was successfully updated.' }
        format.json { render :show, status: :ok, location: @scene }
      else
        format.html { render :edit }
        format.json { render json: @scene.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scenes/1
  # DELETE /scenes/1.json
  def destroy
    @scene.destroy
    respond_to do |format|
      format.html { redirect_to scenes_url, notice: 'Scene was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def cont
    @scene = Scene.find(2)
  end

  def scene3
    @scene = Scene.find(3)
  end

  def scene4
    @scene = Scene.find(4)
  end

  def congratulation
    respond_to do |format|
      format.html { render 'congratulation'}
      format.json { head :no_content }
    end
    # flash[:success] = "Com o galho, você volta para a sala de pesquisa, recupera a chave, e vai para sua casa."
    # redirect_to 'congratulation'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scene
      @scene = Scene.find(params[:id])
    end

  def set_history
    @history = History.all
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scene_params
      params.require(:scene).permit(:imagem, :history_id)
    end
end
