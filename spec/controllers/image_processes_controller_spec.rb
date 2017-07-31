require 'rails_helper'

RSpec.describe ImageProcessesController, type: :controller do
  render_views
  describe "Create #create" do
    context 'with valid attributes,responds successfully with an HTTP 200 status code' do
      it "creates a new image and will be placed in public folder" do
        expect{
          post :create, image_process: FactoryGirl.attributes_for(:image_process)
        }.to change(ImageProcess,:count).by(1)
      end
    end

    context 'with invalid attributes' do
      it 'raises an error' do
          expect{ post(:create, {}) }.to raise_error ActionController::ParameterMissing
      end
    end
  end

  describe "Show " do
    before(:each) do
      @image = FactoryGirl.create :image_process
    end
    context "GET show/:id" do
      it "should show batches from user" do
        get :show, id: @image,format: :json
      end
    end
  end

  describe "Put" do
    before(:each) do
      @image = FactoryGirl.create :image_process
    end

    it "should render the show screen" do
      put :update, id: @image, image_process: FactoryGirl.attributes_for(:image_process)
     @image.reload
     get :show, id: @image,format: :json
    end
  end
end
