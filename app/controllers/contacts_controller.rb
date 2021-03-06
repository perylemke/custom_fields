class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contacts = current_user.contacts
  end

  def show
    @fields_contacts = @contact.fields_contacts
  end

  def new
    @contact = Contact.new
    @fields = current_user.fields
  end

  def edit
    @fields = current_user.fields
    @fields_contacts = @contact.fields_contacts
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.user = current_user
    respond_to do |format|
      if @contact.save
        current_user.fields.each do |field|
          FieldsContact.create(contact: @contact, field: field, value: params[field.field_name])
        end

        format.html { redirect_to @contact, notice: 'Contato criado com sucesso!' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @contact.user = current_user
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to @contact, notice: 'Contato atualizado com sucesso!' }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url, notice: 'Contato removido com sucesso!' }
      format.json { head :no_content }
    end
  end

  private
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:user_id, :name, :email, :fields)
    end
end
