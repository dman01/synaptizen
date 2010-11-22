class KanbansController < ApplicationController
  # GET /kanbans
  # GET /kanbans.xml
  
  layout 'admin'
  
  def index
    @kanbans = Kanban.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kanbans }
    end
  end

  # GET /kanbans/1
  # GET /kanbans/1.xml
  def show
    @kanban = Kanban.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @kanban }
    end
  end

  # GET /kanbans/new
  # GET /kanbans/new.xml
  def new
    @kanban = Kanban.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @kanban }
    end
  end

  # GET /kanbans/1/edit
  def edit
    @kanban = Kanban.find(params[:id])
  end

  # POST /kanbans
  # POST /kanbans.xml
  def create
    @kanban = Kanban.new(params[:kanban])

    respond_to do |format|
      if @kanban.save
        format.html { redirect_to(@kanban, :notice => 'Kanban was successfully created.') }
        format.xml  { render :xml => @kanban, :status => :created, :location => @kanban }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @kanban.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kanbans/1
  # PUT /kanbans/1.xml
  def update
    @kanban = Kanban.find(params[:id])

    respond_to do |format|
      if @kanban.update_attributes(params[:kanban])
        format.html { redirect_to(@kanban, :notice => 'Kanban was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @kanban.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kanbans/1
  # DELETE /kanbans/1.xml
  def destroy
    @kanban = Kanban.find(params[:id])
    @kanban.destroy

    respond_to do |format|
      format.html { redirect_to(kanbans_url) }
      format.xml  { head :ok }
    end
  end
end
