require_relative "spec_helper"

describe "IndexConfig::Generator" do
  it "should create an index from based on the configuration value" do
    visit "/index.html"
    expect(page).to have_css "h1", text: "Hello World"
  end
end
