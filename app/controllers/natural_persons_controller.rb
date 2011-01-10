class NaturalPersonsController < ApplicationController
  # GET /natural_persons
  # GET /natural_persons.xml
  def index
    @natural_persons = NaturalPerson.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @natural_persons }
    end
  end

  # GET /natural_persons/1
  # GET /natural_persons/1.xml
  def show
    @natural_person = NaturalPerson.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @natural_person }
    end
  end

  # GET /natural_persons/new
  # GET /natural_persons/new.xml
  def new
    @natural_person = NaturalPerson.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @natural_person }
    end
  end

  # GET /natural_persons/1/edit
  def edit
    @natural_person = NaturalPerson.find(params[:id])
  end

  # POST /natural_persons
  # POST /natural_persons.xml
  def create
    @natural_person = NaturalPerson.new(params[:natural_person])

    respond_to do |format|
      if @natural_person.save
        format.html { redirect_to(@natural_person, :notice => 'Natural person was successfully created.') }
        format.xml  { render :xml => @natural_person, :status => :created, :location => @natural_person }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @natural_person.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /natural_persons/1
  # PUT /natural_persons/1.xml
  def update
    @natural_person = NaturalPerson.find(params[:id])

    respond_to do |format|
      if @natural_person.update_attributes(params[:natural_person])
        format.html { redirect_to(@natural_person, :notice => 'Natural person was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @natural_person.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /natural_persons/1
  # DELETE /natural_persons/1.xml
  def destroy
    @natural_person = NaturalPerson.find(params[:id])
    @natural_person.destroy

    respond_to do |format|
      format.html { redirect_to(natural_persons_url) }
      format.xml  { head :ok }
    end
  end
end
