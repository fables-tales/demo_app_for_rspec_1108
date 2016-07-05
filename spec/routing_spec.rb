require "rails_helper"

describe ProductsController, :type => :routing do
  describe 'routing' do
    describe 'GET /products/*permalink' do
      it "works with specific paths" do
        expect(get: '/products/some/path').to route_to 'products#show', permalink: "some/path"
      end

      it "does not work with composable matchers" do
        expect(get: '/products/some/path').to route_to 'products#show', permalink: an_instance_of(String)
      end
    end
  end
end
