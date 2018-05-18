require 'rails_helper'

RSpec.describe "application/index", type: :view do

  context "Application" do

    it 'shows the home page' do
      visit "/"
      expect(page.status_code).to eq(200)
    end

  end
end
