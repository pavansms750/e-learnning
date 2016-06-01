class UnitsController < ApplicationController
  before_action :find_course
  before_action :find_unit, only: [:show, :edit, :update, :destroy]

  # GET /units
  # GET /units.json
  def index
    @units = Unit.all
  end

  # GET /units/1
  # GET /units/1.json
  def show
  end

  # GET /units/new
  def new
    @unit = Unit.new
  end

  # GET /units/1/edit
  def edit
    #@course = Course.find(params[:course_id])
   # @unit = @course.unit.find(params[:id])
  end

  # POST /units
  # POST /units.json
  def create
    @unit = Unit.create(unit_params)
    @unit.course_id = @course.id
    @unit.user_id = current_user.id

    
      if @unit.save
       redirect_to course_path(@course)
    end
  end

  # PATCH/PUT /units/1
  # PATCH/PUT /units/1.json
  def update
    
     if @unit.update(unit_params)
         redirect_to course_path(@course)
        
     end
   end

  # DELETE /units/1
  # DELETE /units/1.json
  def destroy
    @unit.destroy
    respond_to do |format|
      format.html { redirect_to @course, notice: 'Unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def find_unit
      @unit = @course.units.find(params[:id])
    end
    
    def find_course
			@course = Course.find(params[:course_id])
		end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unit_params
      params.require(:unit).permit(:name, :pdf, :youtube_url, :rich_text, :video, :course_id)
    end
end
