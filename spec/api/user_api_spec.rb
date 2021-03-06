=begin
#Dependency-Track API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 3.8.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for DependencyTacker::UserApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UserApi' do
  before do
    # run before each test
    @api_instance = DependencyTacker::UserApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserApi' do
    it 'should create an instance of UserApi' do
      expect(@api_instance).to be_instance_of(DependencyTacker::UserApi)
    end
  end

  # unit tests for add_team_to_user
  # Adds the username to the specified team.
  # @param username A valid username
  # @param body The UUID of the team to associate username with
  # @param [Hash] opts the optional parameters
  # @return [UserPrincipal]
  describe 'add_team_to_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_ldap_user
  # Creates a new user that references an existing LDAP object.
  # @param [Hash] opts the optional parameters
  # @option opts [LdapUser] :body 
  # @return [LdapUser]
  describe 'create_ldap_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_managed_user
  # Creates a new user.
  # @param [Hash] opts the optional parameters
  # @option opts [ManagedUser] :body 
  # @return [ManagedUser]
  describe 'create_managed_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_ldap_user
  # Deletes a user.
  # @param [Hash] opts the optional parameters
  # @option opts [LdapUser] :body 
  # @return [nil]
  describe 'delete_ldap_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_managed_user
  # Deletes a user.
  # @param [Hash] opts the optional parameters
  # @option opts [ManagedUser] :body 
  # @return [nil]
  describe 'delete_managed_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for force_change_password
  # Asserts login credentials and upon successful authentication, verifies passwords match and changes users password
  # Upon a successful login, a JSON Web Token will be returned in the response body. This functionality requires authentication to be enabled.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :username 
  # @option opts [String] :password 
  # @option opts [String] :new_password 
  # @option opts [String] :confirm_password 
  # @return [String]
  describe 'force_change_password test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_ldap_users
  # Returns a list of all LDAP users
  # @param [Hash] opts the optional parameters
  # @return [Array<LdapUser>]
  describe 'get_ldap_users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_managed_users
  # Returns a list of all managed users
  # @param [Hash] opts the optional parameters
  # @return [Array<ManagedUser>]
  describe 'get_managed_users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_self
  # Returns information about the current logged in user.
  # @param [Hash] opts the optional parameters
  # @return [UserPrincipal]
  describe 'get_self test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_team_from_user
  # Removes the username from the specified team.
  # @param username A valid username
  # @param body The UUID of the team to un-associate username from
  # @param [Hash] opts the optional parameters
  # @return [UserPrincipal]
  describe 'remove_team_from_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_managed_user
  # Updates a managed user.
  # @param [Hash] opts the optional parameters
  # @option opts [ManagedUser] :body 
  # @return [ManagedUser]
  describe 'update_managed_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_self
  # Updates information about the current logged in user.
  # @param [Hash] opts the optional parameters
  # @option opts [ManagedUser] :body 
  # @return [UserPrincipal]
  describe 'update_self test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for validate_credentials
  # Assert login credentials
  # Upon a successful login, a JSON Web Token will be returned in the response body. This functionality requires authentication to be enabled.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :username 
  # @option opts [String] :password 
  # @return [String]
  describe 'validate_credentials test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
