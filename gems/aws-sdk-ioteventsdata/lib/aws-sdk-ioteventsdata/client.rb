# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:ioteventsdata)

module Aws::IoTEventsData
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :ioteventsdata

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is search for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available. Defaults to `false`.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before rasing a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yeidled by {#session_for}.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idble before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session yeidled by {#session_for}.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Sends a set of messages to the AWS IoT Events system. Each message
    # payload is transformed into the input you specify (`"inputName"`) and
    # ingested into any detectors that monitor that input. If multiple
    # messages are sent, the order in which the messages are processed
    # isn't guaranteed. To guarantee ordering, you must send messages one
    # at a time and wait for a successful response.
    #
    # @option params [required, Array<Types::Message>] :messages
    #   The list of messages to send. Each message has the following format:
    #   `'\{ "messageId": "string", "inputName": "string", "payload":
    #   "string"\}'`
    #
    # @return [Types::BatchPutMessageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchPutMessageResponse#batch_put_message_error_entries #batch_put_message_error_entries} => Array&lt;Types::BatchPutMessageErrorEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_message({
    #     messages: [ # required
    #       {
    #         message_id: "MessageId", # required
    #         input_name: "InputName", # required
    #         payload: "data", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_put_message_error_entries #=> Array
    #   resp.batch_put_message_error_entries[0].message_id #=> String
    #   resp.batch_put_message_error_entries[0].error_code #=> String, one of "ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"
    #   resp.batch_put_message_error_entries[0].error_message #=> String
    #
    # @overload batch_put_message(params = {})
    # @param [Hash] params ({})
    def batch_put_message(params = {}, options = {})
      req = build_request(:batch_put_message, params)
      req.send_request(options)
    end

    # Updates the state, variable values, and timer settings of one or more
    # detectors (instances) of a specified detector model.
    #
    # @option params [required, Array<Types::UpdateDetectorRequest>] :detectors
    #   The list of detectors (instances) to update, along with the values to
    #   update.
    #
    # @return [Types::BatchUpdateDetectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateDetectorResponse#batch_update_detector_error_entries #batch_update_detector_error_entries} => Array&lt;Types::BatchUpdateDetectorErrorEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_detector({
    #     detectors: [ # required
    #       {
    #         message_id: "MessageId", # required
    #         detector_model_name: "DetectorModelName", # required
    #         key_value: "KeyValue",
    #         state: { # required
    #           state_name: "StateName", # required
    #           variables: [ # required
    #             {
    #               name: "VariableName", # required
    #               value: "VariableValue", # required
    #             },
    #           ],
    #           timers: [ # required
    #             {
    #               name: "TimerName", # required
    #               seconds: 1, # required
    #             },
    #           ],
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_update_detector_error_entries #=> Array
    #   resp.batch_update_detector_error_entries[0].message_id #=> String
    #   resp.batch_update_detector_error_entries[0].error_code #=> String, one of "ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"
    #   resp.batch_update_detector_error_entries[0].error_message #=> String
    #
    # @overload batch_update_detector(params = {})
    # @param [Hash] params ({})
    def batch_update_detector(params = {}, options = {})
      req = build_request(:batch_update_detector, params)
      req.send_request(options)
    end

    # Returns information about the specified detector (instance).
    #
    # @option params [required, String] :detector_model_name
    #   The name of the detector model whose detectors (instances) you want
    #   information about.
    #
    # @option params [String] :key_value
    #   A filter used to limit results to detectors (instances) created
    #   because of the given key ID.
    #
    # @return [Types::DescribeDetectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDetectorResponse#detector #detector} => Types::Detector
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_detector({
    #     detector_model_name: "DetectorModelName", # required
    #     key_value: "KeyValue",
    #   })
    #
    # @example Response structure
    #
    #   resp.detector.detector_model_name #=> String
    #   resp.detector.key_value #=> String
    #   resp.detector.detector_model_version #=> String
    #   resp.detector.state.state_name #=> String
    #   resp.detector.state.variables #=> Array
    #   resp.detector.state.variables[0].name #=> String
    #   resp.detector.state.variables[0].value #=> String
    #   resp.detector.state.timers #=> Array
    #   resp.detector.state.timers[0].name #=> String
    #   resp.detector.state.timers[0].timestamp #=> Time
    #   resp.detector.creation_time #=> Time
    #   resp.detector.last_update_time #=> Time
    #
    # @overload describe_detector(params = {})
    # @param [Hash] params ({})
    def describe_detector(params = {}, options = {})
      req = build_request(:describe_detector, params)
      req.send_request(options)
    end

    # Lists detectors (the instances of a detector model).
    #
    # @option params [required, String] :detector_model_name
    #   The name of the detector model whose detectors (instances) are listed.
    #
    # @option params [String] :state_name
    #   A filter that limits results to those detectors (instances) in the
    #   given state.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListDetectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDetectorsResponse#detector_summaries #detector_summaries} => Array&lt;Types::DetectorSummary&gt;
    #   * {Types::ListDetectorsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_detectors({
    #     detector_model_name: "DetectorModelName", # required
    #     state_name: "StateName",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.detector_summaries #=> Array
    #   resp.detector_summaries[0].detector_model_name #=> String
    #   resp.detector_summaries[0].key_value #=> String
    #   resp.detector_summaries[0].detector_model_version #=> String
    #   resp.detector_summaries[0].state.state_name #=> String
    #   resp.detector_summaries[0].creation_time #=> Time
    #   resp.detector_summaries[0].last_update_time #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_detectors(params = {})
    # @param [Hash] params ({})
    def list_detectors(params = {}, options = {})
      req = build_request(:list_detectors, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-ioteventsdata'
      context[:gem_version] = '1.3.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
