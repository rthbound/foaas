module Fuck
  class Donut
    include Salutations

    def initialize(options = {})
      options = {
        resource: "donut",
      }.merge(options)

      load_options(:resource, :name, :from, options)
    end
  end
end
