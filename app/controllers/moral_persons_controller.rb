class MoralPersonsController < ApplicationController
  # GET /moral_persons
  # GET /moral_persons.xml
  def index
    @moral_persons = MoralPerson.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @moral_persons }
    end
  end

  # GET /moral_persons/1
  # GET /moral_persons/1.xml
  def show
    @moral_person = MoralPerson.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moral_person }
    end
  end

  # GET /moral_persons/new
  # GET /moral_persons/new.xml
  def new
    @moral_person = MoralPerson.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @moral_person }
    end
  end

  # GET /moral_persons/1/edit
  def edit
    @moral_person = MoralPerson.find(params[:id])
  end

  # POST /moral_persons
  # POST /moral_persons.xml
  def create
    @moral_person = MoralPerson.new(params[:moral_person])

    respond_to do |format|
      if @moral_person.save
        format.html { redirect_to(@moral_person, :notice => 'Moral person was successfully created.') }
        format.xml  { render :xml => @moral_person, :status => :created, :location => @moral_person }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @moral_person.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /moral_persons/1
  # PUT /moral_persons/1.xml
  def update
    @moral_person = MoralPerson.find(params[:id])

    respond_to do |format|
      if @moral_person.update_attributes(params[:moral_person])
        format.html { redirect_to(@moral_person, :notice => 'Moral person was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @moral_person.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /moral_persons/1
  # DELETE /moral_persons/1.xml
  def destroy
    @moral_person = MoralPerson.find(params[:id])
    @moral_person.destroy

    respond_to do |format|
      format.html { redirect_to(moral_persons_url) }
      format.xml  { head :ok }
    end
  end
end
