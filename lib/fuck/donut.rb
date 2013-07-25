module Fuck
  class Donut
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :name
    # @option options [String] :from
    # @example
    #   Fuck::Donut.new(name: "You", from: "Me").call
    #     => #<PayDirt::Result:0x90f6870 @data= {
    #           "message"=>"You, go and take a flying fuck at a rolling donut.",
    #           "subtitle"=>"- Me"
    #         }, @success=true>
    def initialize(options = {})
      options = {
        resource: "donut",
      }.merge(options)

      load_options(:resource, :name, :from, options)
    end
  end
end
