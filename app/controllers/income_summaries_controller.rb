class IncomeSummariesController < ApplicationController
  before_action :set_income_summary, only: [:show, :edit, :update, :destroy]

  # GET /income_summaries
  # GET /income_summaries.json
  def index
    @income_summaries = IncomeSummary.all
  end

  # GET /income_summaries/1
  # GET /income_summaries/1.json
  def show
  end

  # GET /income_summaries/new
  def new
    @income_summary = IncomeSummary.new
  end

  # GET /income_summaries/1/edit
  def edit
  end

  # POST /income_summaries
  # POST /income_summaries.json
  def create
    @income_summary = IncomeSummary.new(income_summary_params)

    respond_to do |format|
      if @income_summary.save
        format.html { redirect_to @income_summary, notice: 'Income summary was successfully created.' }
        format.json { render :show, status: :created, location: @income_summary }
      else
        format.html { render :new }
        format.json { render json: @income_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /income_summaries/1
  # PATCH/PUT /income_summaries/1.json
  def update
    respond_to do |format|
      if @income_summary.update(income_summary_params)
        format.html { redirect_to @income_summary, notice: 'Income summary was successfully updated.' }
        format.json { render :show, status: :ok, location: @income_summary }
      else
        format.html { render :edit }
        format.json { render json: @income_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /income_summaries/1
  # DELETE /income_summaries/1.json
  def destroy
    @income_summary.destroy
    respond_to do |format|
      format.html { redirect_to income_summaries_url, notice: 'Income summary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_income_summary
      @income_summary = IncomeSummary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def income_summary_params
      params.require(:income_summary).permit(:trust, :individual, :company)
    end
end
