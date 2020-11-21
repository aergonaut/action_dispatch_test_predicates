require "action_dispatch"
require "action_dispatch/testing/test_response"

module ActionDispatch
  module Testing
    module ResponsePredicates
      # Was the response successful?
      def success?
        ActiveSupport::Deprecation.warn(<<~MSG)
          The success? predicate is deprecated and was removed in Rails 6.0.
          Please use successful? as provided by Rack::Response::Helpers.
        MSG
        successful?
      end

      # Was the URL not found?
      def missing?
        ActiveSupport::Deprecation.warn(<<~MSG)
          The missing? predicate is deprecated and was removed in Rails 6.0.
          Please use not_found? as provided by Rack::Response::Helpers.
        MSG
        not_found?
      end

      # Was there a server-side error?
      def error?
        ActiveSupport::Deprecation.warn(<<~MSG)
          The error? predicate is deprecated and was removed in Rails 6.0.
          Please use server_error? as provided by Rack::Response::Helpers.
        MSG
        server_error?
      end
    end
  end
end

ActionDispatch::TestResponse.send(:include, ActionDispatch::Testing::ResponsePredicates)