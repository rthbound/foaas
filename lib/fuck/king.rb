module Fuck
  class King
    include Salutations

    def initialize(options = {})
      options = {
        resource: "king",
      }.merge(options)

      load_options(:resource, :name, :from, options)
    end
  end
end
