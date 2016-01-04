require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe ClientReceiptsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # ClientReceipt. As you add validations to ClientReceipt, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ClientReceiptsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all client_receipts as @client_receipts" do
      client_receipt = ClientReceipt.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:client_receipts)).to eq([client_receipt])
    end
  end

  describe "GET #show" do
    it "assigns the requested client_receipt as @client_receipt" do
      client_receipt = ClientReceipt.create! valid_attributes
      get :show, {:id => client_receipt.to_param}, valid_session
      expect(assigns(:client_receipt)).to eq(client_receipt)
    end
  end

  describe "GET #new" do
    it "assigns a new client_receipt as @client_receipt" do
      get :new, {}, valid_session
      expect(assigns(:client_receipt)).to be_a_new(ClientReceipt)
    end
  end

  describe "GET #edit" do
    it "assigns the requested client_receipt as @client_receipt" do
      client_receipt = ClientReceipt.create! valid_attributes
      get :edit, {:id => client_receipt.to_param}, valid_session
      expect(assigns(:client_receipt)).to eq(client_receipt)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new ClientReceipt" do
        expect {
          post :create, {:client_receipt => valid_attributes}, valid_session
        }.to change(ClientReceipt, :count).by(1)
      end

      it "assigns a newly created client_receipt as @client_receipt" do
        post :create, {:client_receipt => valid_attributes}, valid_session
        expect(assigns(:client_receipt)).to be_a(ClientReceipt)
        expect(assigns(:client_receipt)).to be_persisted
      end

      it "redirects to the created client_receipt" do
        post :create, {:client_receipt => valid_attributes}, valid_session
        expect(response).to redirect_to(ClientReceipt.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved client_receipt as @client_receipt" do
        post :create, {:client_receipt => invalid_attributes}, valid_session
        expect(assigns(:client_receipt)).to be_a_new(ClientReceipt)
      end

      it "re-renders the 'new' template" do
        post :create, {:client_receipt => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested client_receipt" do
        client_receipt = ClientReceipt.create! valid_attributes
        put :update, {:id => client_receipt.to_param, :client_receipt => new_attributes}, valid_session
        client_receipt.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested client_receipt as @client_receipt" do
        client_receipt = ClientReceipt.create! valid_attributes
        put :update, {:id => client_receipt.to_param, :client_receipt => valid_attributes}, valid_session
        expect(assigns(:client_receipt)).to eq(client_receipt)
      end

      it "redirects to the client_receipt" do
        client_receipt = ClientReceipt.create! valid_attributes
        put :update, {:id => client_receipt.to_param, :client_receipt => valid_attributes}, valid_session
        expect(response).to redirect_to(client_receipt)
      end
    end

    context "with invalid params" do
      it "assigns the client_receipt as @client_receipt" do
        client_receipt = ClientReceipt.create! valid_attributes
        put :update, {:id => client_receipt.to_param, :client_receipt => invalid_attributes}, valid_session
        expect(assigns(:client_receipt)).to eq(client_receipt)
      end

      it "re-renders the 'edit' template" do
        client_receipt = ClientReceipt.create! valid_attributes
        put :update, {:id => client_receipt.to_param, :client_receipt => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested client_receipt" do
      client_receipt = ClientReceipt.create! valid_attributes
      expect {
        delete :destroy, {:id => client_receipt.to_param}, valid_session
      }.to change(ClientReceipt, :count).by(-1)
    end

    it "redirects to the client_receipts list" do
      client_receipt = ClientReceipt.create! valid_attributes
      delete :destroy, {:id => client_receipt.to_param}, valid_session
      expect(response).to redirect_to(client_receipts_url)
    end
  end

end