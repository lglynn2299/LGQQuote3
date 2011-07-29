class QuickQuotesController < ApplicationController
  # GET /quick_quotes
  # GET /quick_quotes.xml
  def index
    @quick_quotes = QuickQuote.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @quick_quotes }
    end
  end

  # GET /quick_quotes/1
  # GET /quick_quotes/1.xml
  def show
    @quick_quote = QuickQuote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @quick_quote }
    end
  end

  # GET /quick_quotes/new
  # GET /quick_quotes/new.xml
  def new
    @quick_quote = QuickQuote.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @quick_quote }
    end
  end

  # GET /quick_quotes/1/edit
  def edit
    @quick_quote = QuickQuote.find(params[:id])
  end

  # POST /quick_quotes
  # POST /quick_quotes.xml
  def create
    @quick_quote = QuickQuote.new(params[:quick_quote])

    respond_to do |format|
      if @quick_quote.save
        format.html { redirect_to(@quick_quote, :notice => 'Quick quote was successfully created.') }
        format.xml  { render :xml => @quick_quote, :status => :created, :location => @quick_quote }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @quick_quote.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /quick_quotes/1
  # PUT /quick_quotes/1.xml
  def update
    @quick_quote = QuickQuote.find(params[:id])

    respond_to do |format|
      if @quick_quote.update_attributes(params[:quick_quote])
        format.html { redirect_to(@quick_quote, :notice => 'Quick quote was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @quick_quote.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /quick_quotes/1
  # DELETE /quick_quotes/1.xml
  def destroy
    @quick_quote = QuickQuote.find(params[:id])
    @quick_quote.destroy

    respond_to do |format|
      format.html { redirect_to(quick_quotes_url) }
      format.xml  { head :ok }
    end
  end
end
