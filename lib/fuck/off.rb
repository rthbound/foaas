module Fuck
  class Off
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :name
    # @option options [String] :from
    # @example
    #   Fuck::Off.new(name: "You", from: "Me").call
    #     => #<PayDirt::Result:0x8a544f4 @data= {
    #           "message"=>"Fuck off, You.",
    #           "subtitle"=>"- Me"
    #         }, @success=true>
    def initialize(options = {})
      options = {
        resource: "off",
      }.merge(options)

      load_options(:resource, :name, :from, options)
    end
  end
end
