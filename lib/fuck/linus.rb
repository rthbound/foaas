module Fuck
  class Linus
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :name
    # @option options [String] :from
    # @example
    #   Fuck::Linus.new(name: "You", from: "Me").call
    def initialize(options = {})
      options = {
        resource: "linus",
      }.merge(options)

      load_options(:resource, :name, :from, options)
    end
  end
end
