class TestProceduresController < ApplicationController
  before_action :set_test_procedure, only: %i[ show edit update destroy ]

  # GET /test_procedures or /test_procedures.json
  def index
    @test_procedures = TestProcedure.all
  end

  # GET /test_procedures/1 or /test_procedures/1.json
  def show
  end

  # GET /test_procedures/new
  def new
    @test_procedure = TestProcedure.new
  end

  # GET /test_procedures/1/edit
  def edit
  end

  # POST /test_procedures or /test_procedures.json
  def create
    @test_procedure = TestProcedure.new(test_procedure_params)

    respond_to do |format|
      if @test_procedure.save
        format.html { redirect_to test_procedure_url(@test_procedure), notice: "Test procedure was successfully created." }
        format.json { render :show, status: :created, location: @test_procedure }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @test_procedure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_procedures/1 or /test_procedures/1.json
  def update
    respond_to do |format|
      if @test_procedure.update(test_procedure_params)
        format.html { redirect_to test_procedure_url(@test_procedure), notice: "Test procedure was successfully updated." }
        format.json { render :show, status: :ok, location: @test_procedure }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @test_procedure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_procedures/1 or /test_procedures/1.json
  def destroy
    @test_procedure.destroy

    respond_to do |format|
      format.html { redirect_to test_procedures_url, notice: "Test procedure was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_procedure
      @test_procedure = TestProcedure.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def test_procedure_params
      params.require(:test_procedure).permit(:name, :department_id, :matter_type_id)
    end
end
