class EquipeComposersController < ApplicationController
  before_action :set_equipe_composer, only: %i[show edit update destroy]

  # GET /equipe_composers or /equipe_composers.json
  def index
    @equipe_composers = EquipeComposer.all
  end

  # GET /equipe_composers/1 or /equipe_composers/1.json
  def show
  end

  # GET /equipe_composers/new
  def new
    @equipe_composer = EquipeComposer.new
  end

  # GET /equipe_composers/1/edit
  def edit
  end

  # POST /equipe_composers or /equipe_composers.json
  def create
    @equipe_composer = EquipeComposer.new(equipe_composer_params.except(:user_ids))

    respond_to do |format|
      if @equipe_composer.save
        if params[:equipe_composer][:user_ids].present?
          user_ids = params[:equipe_composer][:user_ids]
          user_ids.each do |user_id|
            EquipeComposerItem.create(equipe_composer_id: @equipe_composer.id, user_id: user_id)
          end
        end

        format.html { redirect_to equipe_composer_url(@equipe_composer), notice: "Equipe composer was successfully created." }
        format.json { render :show, status: :created, location: @equipe_composer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @equipe_composer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipe_composers/1 or /equipe_composers/1.json
  def update
    respond_to do |format|
      if @equipe_composer.update(equipe_composer_params)
        format.html { redirect_to equipe_composer_url(@equipe_composer), notice: "Equipe composer was successfully updated." }
        format.json { render :show, status: :ok, location: @equipe_composer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @equipe_composer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipe_composers/1 or /equipe_composers/1.json
  def destroy
    @equipe_composer.destroy

    respond_to do |format|
      format.html { redirect_to equipe_composers_url, notice: "Equipe composer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_equipe_composer
    @equipe_composer = EquipeComposer.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def equipe_composer_params
    params.require(:equipe_composer).permit(:name, user_ids: [])
  end
end
