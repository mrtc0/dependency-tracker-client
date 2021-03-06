=begin
#Dependency-Track API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 3.8.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for DependencyTacker::PermissionApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PermissionApi' do
  before do
    # run before each test
    @api_instance = DependencyTacker::PermissionApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PermissionApi' do
    it 'should create an instance of PermissionApi' do
      expect(@api_instance).to be_instance_of(DependencyTacker::PermissionApi)
    end
  end

  # unit tests for add_permission_to_team
  # Adds the permission to the specified username.
  # Requires &#39;manage users&#39; permission.
  # @param uuid A valid team uuid
  # @param permission A valid permission
  # @param [Hash] opts the optional parameters
  # @return [Team]
  describe 'add_permission_to_team test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_permission_to_user
  # Adds the permission to the specified username.
  # @param username A valid username
  # @param permission A valid permission
  # @param [Hash] opts the optional parameters
  # @return [UserPrincipal]
  describe 'add_permission_to_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_permissions
  # Returns a list of all permissions
  # @param [Hash] opts the optional parameters
  # @return [Array<Permission>]
  describe 'get_all_permissions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_permission_from_team
  # Removes the permission from the team.
  # @param uuid A valid team uuid
  # @param permission A valid permission
  # @param [Hash] opts the optional parameters
  # @return [Team]
  describe 'remove_permission_from_team test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_permission_from_user
  # Removes the permission from the user.
  # @param username A valid username
  # @param permission A valid permission
  # @param [Hash] opts the optional parameters
  # @return [UserPrincipal]
  describe 'remove_permission_from_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
