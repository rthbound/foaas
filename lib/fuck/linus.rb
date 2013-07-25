module Fuck
  class Linus
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :name
    # @option options [String] :from
    # @example
    #   Fuck::Linus.new(name: "You", from: "Me").call
    #     => #<PayDirt::Result:0x916ccc8 @data= {
    #           "message"=> "You, there aren't enough swear-words in the English language,
    #                        so now I'll have to call you perkeleen vittupää just to
    #                        express my disgust and frustration with this crap.",
    #           "subtitle"=>"- Me"
    #         }, @success=true>
    def initialize(options = {})
      options = {
        resource: "linus",
      }.merge(options)

      load_options(:resource, :name, :from, options)
    end
  end
end
