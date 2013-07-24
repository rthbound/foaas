module Fuck
  class Linus
    include Salutations

    def initialize(options = {})
      options = {
        resource: "linus",
      }.merge(options)

      load_options(:resource, :name, :from, options)
    end
  end
end
