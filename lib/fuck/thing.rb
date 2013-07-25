module Fuck
  class Thing
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :thing
    # @option options [String] :from
    # @example
    #   Fuck::Thing.new(thing: "Cassowaries", from: "Me").call
    #     => #<PayDirt::Result:0x92db334 @data= {
    #           "message"=>"Fuck Anything.",
    #           "subtitle"=>"- Me"
    #         }, @success=true>
    def initialize(options = {})
      options = {
        resource: options[:thing],
      }.merge(options)

      load_options(:thing, :from, options)
    end
  end
end
