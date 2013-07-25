module Fuck
  class Chainsaw
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :name
    # @option options [String] :from
    # @example
    #   Fuck::Chainsaw.new(name: "You", from: "Me").call
    #     => #<PayDirt::Result:0x92734f0 @data={
    #           "message"=> "Fuck me gently with a chainsaw, You. Do I look like Mother Teresa?",
    #           "subtitle"=>"- Me"
    #         }, @success=true>
    def initialize(options = {})
      options = {
        resource: "chainsaw",
      }.merge(options)

      load_options(:resource, :name, :from, options)
    end
  end
end
