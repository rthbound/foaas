module Salutations
  def self.included(base)
    def execute!
      FOaaS::FO.new(resource: @resource, from: @from, name: @name).execute!
    end
  end
end
