class FieldsController < ApplicationController
  before_action :set_field, only: [:show, :edit, :update, :destroy]

  def index
    @fields = current_user.field
  end

  def show
  end

  def new
    @field = Field.new
  end

  def edit
  end

  def create
    @field = Field.new(field_params)
    @field.user = current_user

    respond_to do |format|
      if @field.save
        format.html { redirect_to @field, notice: 'Campo criado com sucesso!' }
        format.json { render :show, status: :created, location: @field }
      else
        format.html { render :new }
        format.json { render json: @field.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @field.update(field_params)
        format.html { redirect_to @field, notice: 'Campo atualizado com sucesso!' }
        format.json { render :show, status: :ok, location: @field }
      else
        format.html { render :edit }
        format.json { render json: @field.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @field.destroy
    respond_to do |format|
      format.html { redirect_to fields_url, notice: 'Campo removido com sucesso!' }
      format.json { head :no_content }
    end
  end

  private
    def set_field
      @field = Field.find(params[:id])
    end

    def field_params
      params.require(:field).permit(:user_id, :field_name, :field_type)
    end
end
