require_relative '../data_mapper_setup'
require 'dm-validations'
require 'bcrypt'

class User
  include DataMapper::Resource

  property :id,         Serial
  property :email,      String
  property :name,       String
  property :user_name,  String
  property :password,   BCryptHash

  attr_accessor :password_confirmation

end
