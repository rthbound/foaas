module Fuck
  class Fascinating
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :name
    # @option options [String] :from
    # @example
    #   Fuck::Fascinating.new(from: "Me").call
    #     => <PayDirt::Result:0x9999eb4 @data= {
    #           "message"=>"Fascinating story, in what chapter do you shut the fuck up?",
    #           "subtitle"=>"- Me"
    #         }, @success=true>
    def initialize(options = {})
      options = {
        resource: "fascinating",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end
