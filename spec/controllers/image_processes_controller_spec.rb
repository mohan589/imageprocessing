require 'rails_helper'

RSpec.describe ImageProcessesController, type: :controller do
  describe "Create #create" do
    context 'with valid attributes,responds successfully with an HTTP 200 status code' do
      image = FactoryGirl.create(:user, :username => "jdoe", :password => "secret")
    end

    context 'with invalid attributes' do
      image = FactoryGirl.create(:user, :username => "jdoe", :password => "secret")
    end
  end
end
