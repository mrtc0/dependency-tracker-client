=begin
#Dependency-Track API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 3.8.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for DependencyTacker::LicenseApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LicenseApi' do
  before do
    # run before each test
    @api_instance = DependencyTacker::LicenseApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LicenseApi' do
    it 'should create an instance of LicenseApi' do
      expect(@api_instance).to be_instance_of(DependencyTacker::LicenseApi)
    end
  end

  # unit tests for get_license
  # Returns a specific license
  # @param license_id The SPDX License ID of the license to retrieve
  # @param [Hash] opts the optional parameters
  # @return [License]
  describe 'get_license test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_license_listing
  # Returns a concise listing of all licenses
  # @param [Hash] opts the optional parameters
  # @return [Array<License>]
  describe 'get_license_listing test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_licenses
  # Returns a list of all licenses with complete metadata for each license
  # @param [Hash] opts the optional parameters
  # @return [Array<License>]
  describe 'get_licenses test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end