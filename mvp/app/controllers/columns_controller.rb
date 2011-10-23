class ColumnsController < ApplicationController
  # GET /columns
  # GET /columns.json
  def index
    @columns = Column.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @columns }
    end
  end

  # GET /columns/1
  # GET /columns/1.json
  def show
    @column = Column.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @column }
    end
  end

  # GET /columns/new
  # GET /columns/new.json
  def new
    @column = Column.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @column }
    end
  end

  # GET /columns/1/edit
  def edit
    @column = Column.find(params[:id])
  end

  # POST /columns
  # POST /columns.json
  def create
    @column = Column.new(params[:column])

    respond_to do |format|
      if @column.save
        format.html { redirect_to @column, notice: 'Column was successfully created.' }
        format.json { render json: @column, status: :created, location: @column }
      else
        format.html { render action: "new" }
        format.json { render json: @column.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /columns/1
  # PUT /columns/1.json
  def update
    @column = Column.find(params[:id])

    respond_to do |format|
      if @column.update_attributes(params[:column])
        format.html { redirect_to @column, notice: 'Column was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @column.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /columns/1
  # DELETE /columns/1.json
  def destroy
    @column = Column.find(params[:id])
    @column.destroy

    respond_to do |format|
      format.html { redirect_to columns_url }
      format.json { head :ok }
    end
  end
end
