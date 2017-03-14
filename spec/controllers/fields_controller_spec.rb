require 'rails_helper'

RSpec.describe FieldsController, type: :controller do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all fields as @fields" do
      field = Field.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:fields)).to eq([field])
    end
  end

  describe "GET #show" do
    it "assigns the requested field as @field" do
      field = Field.create! valid_attributes
      get :show, params: {id: field.to_param}, session: valid_session
      expect(assigns(:field)).to eq(field)
    end
  end

  describe "GET #new" do
    it "assigns a new field as @field" do
      get :new, params: {}, session: valid_session
      expect(assigns(:field)).to be_a_new(Field)
    end
  end

  describe "GET #edit" do
    it "assigns the requested field as @field" do
      field = Field.create! valid_attributes
      get :edit, params: {id: field.to_param}, session: valid_session
      expect(assigns(:field)).to eq(field)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Field" do
        expect {
          post :create, params: {field: valid_attributes}, session: valid_session
        }.to change(Field, :count).by(1)
      end

      it "assigns a newly created field as @field" do
        post :create, params: {field: valid_attributes}, session: valid_session
        expect(assigns(:field)).to be_a(Field)
        expect(assigns(:field)).to be_persisted
      end

      it "redirects to the created field" do
        post :create, params: {field: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Field.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved field as @field" do
        post :create, params: {field: invalid_attributes}, session: valid_session
        expect(assigns(:field)).to be_a_new(Field)
      end

      it "re-renders the 'new' template" do
        post :create, params: {field: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested field" do
        field = Field.create! valid_attributes
        put :update, params: {id: field.to_param, field: new_attributes}, session: valid_session
        field.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested field as @field" do
        field = Field.create! valid_attributes
        put :update, params: {id: field.to_param, field: valid_attributes}, session: valid_session
        expect(assigns(:field)).to eq(field)
      end

      it "redirects to the field" do
        field = Field.create! valid_attributes
        put :update, params: {id: field.to_param, field: valid_attributes}, session: valid_session
        expect(response).to redirect_to(field)
      end
    end

    context "with invalid params" do
      it "assigns the field as @field" do
        field = Field.create! valid_attributes
        put :update, params: {id: field.to_param, field: invalid_attributes}, session: valid_session
        expect(assigns(:field)).to eq(field)
      end

      it "re-renders the 'edit' template" do
        field = Field.create! valid_attributes
        put :update, params: {id: field.to_param, field: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested field" do
      field = Field.create! valid_attributes
      expect {
        delete :destroy, params: {id: field.to_param}, session: valid_session
      }.to change(Field, :count).by(-1)
    end

    it "redirects to the fields list" do
      field = Field.create! valid_attributes
      delete :destroy, params: {id: field.to_param}, session: valid_session
      expect(response).to redirect_to(fields_url)
    end
  end

end
