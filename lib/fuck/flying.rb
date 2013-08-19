module Fuck
  class Flying
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :name
    # @option options [String] :from
    # @example
    #   Fuck::Flying.new(from: "Me").call
    #     => #<PayDirt::Result:0x99e132c @data= {
    #           "message"=>"I don't give a flying fuck.",
    #           "subtitle"=>"- Me"
    #         }, @success=true>
    def initialize(options = {})
      options = {
        resource: "flying",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end
