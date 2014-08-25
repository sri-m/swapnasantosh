class MyContactFormsController < ApplicationController
  before_action :set_my_contact_form, only: [:show, :edit, :update, :destroy]

  # GET /my_contact_forms
  # GET /my_contact_forms.json
  def index
    @my_contact_forms = MyContactForm.all
  end

  # GET /my_contact_forms/1
  # GET /my_contact_forms/1.json
  def show
  end

  # GET /my_contact_forms/new
  def new
    @my_contact_form = MyContactForm.new
  end

  # GET /my_contact_forms/1/edit
  def edit
  end

  # POST /my_contact_forms
  # POST /my_contact_forms.json
  def create
    @my_contact_form = MyContactForm.new(my_contact_form_params)

    respond_to do |format|
      if @my_contact_form.save
        format.html { redirect_to @my_contact_form, notice: 'My contact form was successfully created.' }
        format.json { render :show, status: :created, location: @my_contact_form }
      else
        format.html { render :new }
        format.json { render json: @my_contact_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_contact_forms/1
  # PATCH/PUT /my_contact_forms/1.json
  def update
    respond_to do |format|
      if @my_contact_form.update(my_contact_form_params)
        format.html { redirect_to @my_contact_form, notice: 'My contact form was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_contact_form }
      else
        format.html { render :edit }
        format.json { render json: @my_contact_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_contact_forms/1
  # DELETE /my_contact_forms/1.json
  def destroy
    @my_contact_form.destroy
    respond_to do |format|
      format.html { redirect_to my_contact_forms_url, notice: 'My contact form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_contact_form
      @my_contact_form = MyContactForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_contact_form_params
      params.require(:my_contact_form).permit(:name, :address)
    end
end
