module Salutations
  include PayDirt::UseCase

  def self.included(base)
    def call
      FOaaS::FO.new(resource: @resource, from: @from, name: @name).execute!
    end

    alias_method :execute!, :call
  end
end
