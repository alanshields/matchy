module Matchy
  module Expectations
    # Class to handle operator expectations.
    #
    # ==== Examples
    #   
    #   13.should == 13
    #   "hello".length.should_not == 2
    #
    class OperatorExpectation #< Base
      include Test::Unit::Assertions
           
      def initialize(receiver, match)
        @receiver, @match = receiver, match
      end
      
      ['==', '===', '=~', '>', '>=', '<', '<='].each do |op|
        define_method(op) do |expected|
          @expected = expected
          (@receiver.send(op,expected) ? true : false) == @match ? pass! : fail!(op)
        end
      end
      
      protected
      def pass!
        defined?($current_test_case) ? $current_test_case.assert(true) : (assert true)
      end
      
      def fail!(operator)
        flunk @match ? failure_message(operator) : negative_failure_message(operator)
      end
      
      def failure_message(operator)
        out = "Expected #{@receiver.inspect} to #{operator} #{@expected.inspect}"
        if Hash === @receiver && Hash === @expected
          # Hash#diff, from ActiveSupport
          diff = @receiver.dup.delete_if { |k, v| @expected[k] == v }.merge(@expected.dup.delete_if { |k, v| @receiver.has_key?(k) })
          out += " (diff: #{diff.inspect})"
        end
        out += "."
      end
      
      def negative_failure_message(operator)
        "Expected #{@receiver.inspect} to not #{operator} #{@expected.inspect}."
      end
    end
  end
end