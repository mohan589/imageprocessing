require 'rails_helper'

RSpec.describe ImageProcessesController, type: :controller do
  describe "Create #create" do
    context 'with valid attributes,responds successfully with an HTTP 200 status code' do
      it "creates a new image and will be placed in public folder" do
        post 'create', image_process: FactoryGirl.attributes_for(:image_process)
        expect(response).to render_template(:create)
      end
    end

    context 'with invalid attributes' do
      it 'raises an error' do
          expect{ post(:create, {}) }.to raise_error ActionController::ParameterMissing
      end
    end

    context 'retrives the requested image via id' do

    end
  end
end
