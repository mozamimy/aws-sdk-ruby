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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:states)

module Aws::States
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :states

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
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

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
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
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

    # Creates an activity. An activity is a task that you write in any
    # programming language and host on any machine that has access to AWS
    # Step Functions. Activities must poll Step Functions using the
    # `GetActivityTask` API action and respond using `SendTask*` API
    # actions. This function lets Step Functions know the existence of your
    # activity and returns an identifier for use in a state machine and when
    # polling from the activity.
    #
    # <note markdown="1"> This operation is eventually consistent. The results are best effort
    # and may not reflect very recent updates and changes.
    #
    #  </note>
    #
    # @option params [required, String] :name
    #   The name of the activity to create. This name must be unique for your
    #   AWS account and region for 90 days. For more information, see [ Limits
    #   Related to State Machine Executions][1] in the *AWS Step Functions
    #   Developer Guide*.
    #
    #   A name must *not* contain:
    #
    #   * whitespace
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions
    #
    # @option params [Array<Types::Tag>] :tags
    #   The list of tags to add to a resource.
    #
    # @return [Types::CreateActivityOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateActivityOutput#activity_arn #activity_arn} => String
    #   * {Types::CreateActivityOutput#creation_date #creation_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_activity({
    #     name: "Name", # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.activity_arn #=> String
    #   resp.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/CreateActivity AWS API Documentation
    #
    # @overload create_activity(params = {})
    # @param [Hash] params ({})
    def create_activity(params = {}, options = {})
      req = build_request(:create_activity, params)
      req.send_request(options)
    end

    # Creates a state machine. A state machine consists of a collection of
    # states that can do work (`Task` states), determine to which states to
    # transition next (`Choice` states), stop an execution with an error
    # (`Fail` states), and so on. State machines are specified using a
    # JSON-based, structured language.
    #
    # <note markdown="1"> This operation is eventually consistent. The results are best effort
    # and may not reflect very recent updates and changes.
    #
    #  </note>
    #
    # @option params [required, String] :name
    #   The name of the state machine.
    #
    #   A name must *not* contain:
    #
    #   * whitespace
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
    #
    # @option params [required, String] :definition
    #   The Amazon States Language definition of the state machine. See
    #   [Amazon States Language][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to use for this state
    #   machine.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to be added when creating a state machine.
    #
    # @return [Types::CreateStateMachineOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStateMachineOutput#state_machine_arn #state_machine_arn} => String
    #   * {Types::CreateStateMachineOutput#creation_date #creation_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_state_machine({
    #     name: "Name", # required
    #     definition: "Definition", # required
    #     role_arn: "Arn", # required
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.state_machine_arn #=> String
    #   resp.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/CreateStateMachine AWS API Documentation
    #
    # @overload create_state_machine(params = {})
    # @param [Hash] params ({})
    def create_state_machine(params = {}, options = {})
      req = build_request(:create_state_machine, params)
      req.send_request(options)
    end

    # Deletes an activity.
    #
    # @option params [required, String] :activity_arn
    #   The Amazon Resource Name (ARN) of the activity to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_activity({
    #     activity_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DeleteActivity AWS API Documentation
    #
    # @overload delete_activity(params = {})
    # @param [Hash] params ({})
    def delete_activity(params = {}, options = {})
      req = build_request(:delete_activity, params)
      req.send_request(options)
    end

    # Deletes a state machine. This is an asynchronous operation: It sets
    # the state machine's status to `DELETING` and begins the deletion
    # process. Each state machine execution is deleted the next time it
    # makes a state transition.
    #
    # <note markdown="1"> The state machine itself is deleted after all executions are completed
    # or deleted.
    #
    #  </note>
    #
    # @option params [required, String] :state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_state_machine({
    #     state_machine_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DeleteStateMachine AWS API Documentation
    #
    # @overload delete_state_machine(params = {})
    # @param [Hash] params ({})
    def delete_state_machine(params = {}, options = {})
      req = build_request(:delete_state_machine, params)
      req.send_request(options)
    end

    # Describes an activity.
    #
    # <note markdown="1"> This operation is eventually consistent. The results are best effort
    # and may not reflect very recent updates and changes.
    #
    #  </note>
    #
    # @option params [required, String] :activity_arn
    #   The Amazon Resource Name (ARN) of the activity to describe.
    #
    # @return [Types::DescribeActivityOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeActivityOutput#activity_arn #activity_arn} => String
    #   * {Types::DescribeActivityOutput#name #name} => String
    #   * {Types::DescribeActivityOutput#creation_date #creation_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_activity({
    #     activity_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.activity_arn #=> String
    #   resp.name #=> String
    #   resp.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeActivity AWS API Documentation
    #
    # @overload describe_activity(params = {})
    # @param [Hash] params ({})
    def describe_activity(params = {}, options = {})
      req = build_request(:describe_activity, params)
      req.send_request(options)
    end

    # Describes an execution.
    #
    # <note markdown="1"> This operation is eventually consistent. The results are best effort
    # and may not reflect very recent updates and changes.
    #
    #  </note>
    #
    # @option params [required, String] :execution_arn
    #   The Amazon Resource Name (ARN) of the execution to describe.
    #
    # @return [Types::DescribeExecutionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeExecutionOutput#execution_arn #execution_arn} => String
    #   * {Types::DescribeExecutionOutput#state_machine_arn #state_machine_arn} => String
    #   * {Types::DescribeExecutionOutput#name #name} => String
    #   * {Types::DescribeExecutionOutput#status #status} => String
    #   * {Types::DescribeExecutionOutput#start_date #start_date} => Time
    #   * {Types::DescribeExecutionOutput#stop_date #stop_date} => Time
    #   * {Types::DescribeExecutionOutput#input #input} => String
    #   * {Types::DescribeExecutionOutput#output #output} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_execution({
    #     execution_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_arn #=> String
    #   resp.state_machine_arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "ABORTED"
    #   resp.start_date #=> Time
    #   resp.stop_date #=> Time
    #   resp.input #=> String
    #   resp.output #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeExecution AWS API Documentation
    #
    # @overload describe_execution(params = {})
    # @param [Hash] params ({})
    def describe_execution(params = {}, options = {})
      req = build_request(:describe_execution, params)
      req.send_request(options)
    end

    # Describes a state machine.
    #
    # <note markdown="1"> This operation is eventually consistent. The results are best effort
    # and may not reflect very recent updates and changes.
    #
    #  </note>
    #
    # @option params [required, String] :state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine to describe.
    #
    # @return [Types::DescribeStateMachineOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStateMachineOutput#state_machine_arn #state_machine_arn} => String
    #   * {Types::DescribeStateMachineOutput#name #name} => String
    #   * {Types::DescribeStateMachineOutput#status #status} => String
    #   * {Types::DescribeStateMachineOutput#definition #definition} => String
    #   * {Types::DescribeStateMachineOutput#role_arn #role_arn} => String
    #   * {Types::DescribeStateMachineOutput#creation_date #creation_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_state_machine({
    #     state_machine_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.state_machine_arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "ACTIVE", "DELETING"
    #   resp.definition #=> String
    #   resp.role_arn #=> String
    #   resp.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeStateMachine AWS API Documentation
    #
    # @overload describe_state_machine(params = {})
    # @param [Hash] params ({})
    def describe_state_machine(params = {}, options = {})
      req = build_request(:describe_state_machine, params)
      req.send_request(options)
    end

    # Describes the state machine associated with a specific execution.
    #
    # <note markdown="1"> This operation is eventually consistent. The results are best effort
    # and may not reflect very recent updates and changes.
    #
    #  </note>
    #
    # @option params [required, String] :execution_arn
    #   The Amazon Resource Name (ARN) of the execution you want state machine
    #   information for.
    #
    # @return [Types::DescribeStateMachineForExecutionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStateMachineForExecutionOutput#state_machine_arn #state_machine_arn} => String
    #   * {Types::DescribeStateMachineForExecutionOutput#name #name} => String
    #   * {Types::DescribeStateMachineForExecutionOutput#definition #definition} => String
    #   * {Types::DescribeStateMachineForExecutionOutput#role_arn #role_arn} => String
    #   * {Types::DescribeStateMachineForExecutionOutput#update_date #update_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_state_machine_for_execution({
    #     execution_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.state_machine_arn #=> String
    #   resp.name #=> String
    #   resp.definition #=> String
    #   resp.role_arn #=> String
    #   resp.update_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/DescribeStateMachineForExecution AWS API Documentation
    #
    # @overload describe_state_machine_for_execution(params = {})
    # @param [Hash] params ({})
    def describe_state_machine_for_execution(params = {}, options = {})
      req = build_request(:describe_state_machine_for_execution, params)
      req.send_request(options)
    end

    # Used by workers to retrieve a task (with the specified activity ARN)
    # which has been scheduled for execution by a running state machine.
    # This initiates a long poll, where the service holds the HTTP
    # connection open and responds as soon as a task becomes available (i.e.
    # an execution of a task of this type is needed.) The maximum time the
    # service holds on to the request before responding is 60 seconds. If no
    # task is available within 60 seconds, the poll returns a `taskToken`
    # with a null string.
    #
    # Workers should set their client side socket timeout to at least 65
    # seconds (5 seconds higher than the maximum time the service may hold
    # the poll request).
    #
    #  Polling with `GetActivityTask` can cause latency in some
    # implementations. See [Avoid Latency When Polling for Activity
    # Tasks][1] in the Step Functions Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/step-functions/latest/dg/bp-activity-pollers.html
    #
    # @option params [required, String] :activity_arn
    #   The Amazon Resource Name (ARN) of the activity to retrieve tasks from
    #   (assigned when you create the task using CreateActivity.)
    #
    # @option params [String] :worker_name
    #   You can provide an arbitrary name in order to identify the worker that
    #   the task is assigned to. This name is used when it is logged in the
    #   execution history.
    #
    # @return [Types::GetActivityTaskOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetActivityTaskOutput#task_token #task_token} => String
    #   * {Types::GetActivityTaskOutput#input #input} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_activity_task({
    #     activity_arn: "Arn", # required
    #     worker_name: "Name",
    #   })
    #
    # @example Response structure
    #
    #   resp.task_token #=> String
    #   resp.input #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/GetActivityTask AWS API Documentation
    #
    # @overload get_activity_task(params = {})
    # @param [Hash] params ({})
    def get_activity_task(params = {}, options = {})
      req = build_request(:get_activity_task, params)
      req.send_request(options)
    end

    # Returns the history of the specified execution as a list of events. By
    # default, the results are returned in ascending order of the
    # `timeStamp` of the events. Use the `reverseOrder` parameter to get the
    # latest events first.
    #
    # If `nextToken` is returned, there are more results available. The
    # value of `nextToken` is a unique pagination token for each page. Make
    # the call again using the returned token to retrieve the next page.
    # Keep all other arguments unchanged. Each pagination token expires
    # after 24 hours. Using an expired pagination token will return an *HTTP
    # 400 InvalidToken* error.
    #
    # @option params [required, String] :execution_arn
    #   The Amazon Resource Name (ARN) of the execution.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `nextToken` to obtain further pages of results. The default is 100 and
    #   the maximum allowed page size is 1000. A value of 0 uses the default.
    #
    #   This is only an upper limit. The actual number of results returned per
    #   call might be fewer than the specified maximum.
    #
    # @option params [Boolean] :reverse_order
    #   Lists events in descending order of their `timeStamp`.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged. Each pagination token expires
    #   after 24 hours. Using an expired pagination token will return an *HTTP
    #   400 InvalidToken* error.
    #
    # @return [Types::GetExecutionHistoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetExecutionHistoryOutput#events #events} => Array&lt;Types::HistoryEvent&gt;
    #   * {Types::GetExecutionHistoryOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_execution_history({
    #     execution_arn: "Arn", # required
    #     max_results: 1,
    #     reverse_order: false,
    #     next_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].timestamp #=> Time
    #   resp.events[0].type #=> String, one of "ActivityFailed", "ActivityScheduleFailed", "ActivityScheduled", "ActivityStarted", "ActivitySucceeded", "ActivityTimedOut", "ChoiceStateEntered", "ChoiceStateExited", "TaskFailed", "TaskScheduled", "TaskStartFailed", "TaskStarted", "TaskSubmitFailed", "TaskSubmitted", "TaskSucceeded", "TaskTimedOut", "ExecutionFailed", "ExecutionStarted", "ExecutionSucceeded", "ExecutionAborted", "ExecutionTimedOut", "FailStateEntered", "LambdaFunctionFailed", "LambdaFunctionScheduleFailed", "LambdaFunctionScheduled", "LambdaFunctionStartFailed", "LambdaFunctionStarted", "LambdaFunctionSucceeded", "LambdaFunctionTimedOut", "SucceedStateEntered", "SucceedStateExited", "TaskStateAborted", "TaskStateEntered", "TaskStateExited", "PassStateEntered", "PassStateExited", "ParallelStateAborted", "ParallelStateEntered", "ParallelStateExited", "ParallelStateFailed", "ParallelStateStarted", "ParallelStateSucceeded", "WaitStateAborted", "WaitStateEntered", "WaitStateExited"
    #   resp.events[0].id #=> Integer
    #   resp.events[0].previous_event_id #=> Integer
    #   resp.events[0].activity_failed_event_details.error #=> String
    #   resp.events[0].activity_failed_event_details.cause #=> String
    #   resp.events[0].activity_schedule_failed_event_details.error #=> String
    #   resp.events[0].activity_schedule_failed_event_details.cause #=> String
    #   resp.events[0].activity_scheduled_event_details.resource #=> String
    #   resp.events[0].activity_scheduled_event_details.input #=> String
    #   resp.events[0].activity_scheduled_event_details.timeout_in_seconds #=> Integer
    #   resp.events[0].activity_scheduled_event_details.heartbeat_in_seconds #=> Integer
    #   resp.events[0].activity_started_event_details.worker_name #=> String
    #   resp.events[0].activity_succeeded_event_details.output #=> String
    #   resp.events[0].activity_timed_out_event_details.error #=> String
    #   resp.events[0].activity_timed_out_event_details.cause #=> String
    #   resp.events[0].task_failed_event_details.resource_type #=> String
    #   resp.events[0].task_failed_event_details.resource #=> String
    #   resp.events[0].task_failed_event_details.error #=> String
    #   resp.events[0].task_failed_event_details.cause #=> String
    #   resp.events[0].task_scheduled_event_details.resource_type #=> String
    #   resp.events[0].task_scheduled_event_details.resource #=> String
    #   resp.events[0].task_scheduled_event_details.region #=> String
    #   resp.events[0].task_scheduled_event_details.parameters #=> String
    #   resp.events[0].task_scheduled_event_details.timeout_in_seconds #=> Integer
    #   resp.events[0].task_start_failed_event_details.resource_type #=> String
    #   resp.events[0].task_start_failed_event_details.resource #=> String
    #   resp.events[0].task_start_failed_event_details.error #=> String
    #   resp.events[0].task_start_failed_event_details.cause #=> String
    #   resp.events[0].task_started_event_details.resource_type #=> String
    #   resp.events[0].task_started_event_details.resource #=> String
    #   resp.events[0].task_submit_failed_event_details.resource_type #=> String
    #   resp.events[0].task_submit_failed_event_details.resource #=> String
    #   resp.events[0].task_submit_failed_event_details.error #=> String
    #   resp.events[0].task_submit_failed_event_details.cause #=> String
    #   resp.events[0].task_submitted_event_details.resource_type #=> String
    #   resp.events[0].task_submitted_event_details.resource #=> String
    #   resp.events[0].task_submitted_event_details.output #=> String
    #   resp.events[0].task_succeeded_event_details.resource_type #=> String
    #   resp.events[0].task_succeeded_event_details.resource #=> String
    #   resp.events[0].task_succeeded_event_details.output #=> String
    #   resp.events[0].task_timed_out_event_details.resource_type #=> String
    #   resp.events[0].task_timed_out_event_details.resource #=> String
    #   resp.events[0].task_timed_out_event_details.error #=> String
    #   resp.events[0].task_timed_out_event_details.cause #=> String
    #   resp.events[0].execution_failed_event_details.error #=> String
    #   resp.events[0].execution_failed_event_details.cause #=> String
    #   resp.events[0].execution_started_event_details.input #=> String
    #   resp.events[0].execution_started_event_details.role_arn #=> String
    #   resp.events[0].execution_succeeded_event_details.output #=> String
    #   resp.events[0].execution_aborted_event_details.error #=> String
    #   resp.events[0].execution_aborted_event_details.cause #=> String
    #   resp.events[0].execution_timed_out_event_details.error #=> String
    #   resp.events[0].execution_timed_out_event_details.cause #=> String
    #   resp.events[0].lambda_function_failed_event_details.error #=> String
    #   resp.events[0].lambda_function_failed_event_details.cause #=> String
    #   resp.events[0].lambda_function_schedule_failed_event_details.error #=> String
    #   resp.events[0].lambda_function_schedule_failed_event_details.cause #=> String
    #   resp.events[0].lambda_function_scheduled_event_details.resource #=> String
    #   resp.events[0].lambda_function_scheduled_event_details.input #=> String
    #   resp.events[0].lambda_function_scheduled_event_details.timeout_in_seconds #=> Integer
    #   resp.events[0].lambda_function_start_failed_event_details.error #=> String
    #   resp.events[0].lambda_function_start_failed_event_details.cause #=> String
    #   resp.events[0].lambda_function_succeeded_event_details.output #=> String
    #   resp.events[0].lambda_function_timed_out_event_details.error #=> String
    #   resp.events[0].lambda_function_timed_out_event_details.cause #=> String
    #   resp.events[0].state_entered_event_details.name #=> String
    #   resp.events[0].state_entered_event_details.input #=> String
    #   resp.events[0].state_exited_event_details.name #=> String
    #   resp.events[0].state_exited_event_details.output #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/GetExecutionHistory AWS API Documentation
    #
    # @overload get_execution_history(params = {})
    # @param [Hash] params ({})
    def get_execution_history(params = {}, options = {})
      req = build_request(:get_execution_history, params)
      req.send_request(options)
    end

    # Lists the existing activities.
    #
    # If `nextToken` is returned, there are more results available. The
    # value of `nextToken` is a unique pagination token for each page. Make
    # the call again using the returned token to retrieve the next page.
    # Keep all other arguments unchanged. Each pagination token expires
    # after 24 hours. Using an expired pagination token will return an *HTTP
    # 400 InvalidToken* error.
    #
    # <note markdown="1"> This operation is eventually consistent. The results are best effort
    # and may not reflect very recent updates and changes.
    #
    #  </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `nextToken` to obtain further pages of results. The default is 100 and
    #   the maximum allowed page size is 1000. A value of 0 uses the default.
    #
    #   This is only an upper limit. The actual number of results returned per
    #   call might be fewer than the specified maximum.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged. Each pagination token expires
    #   after 24 hours. Using an expired pagination token will return an *HTTP
    #   400 InvalidToken* error.
    #
    # @return [Types::ListActivitiesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListActivitiesOutput#activities #activities} => Array&lt;Types::ActivityListItem&gt;
    #   * {Types::ListActivitiesOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_activities({
    #     max_results: 1,
    #     next_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.activities #=> Array
    #   resp.activities[0].activity_arn #=> String
    #   resp.activities[0].name #=> String
    #   resp.activities[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListActivities AWS API Documentation
    #
    # @overload list_activities(params = {})
    # @param [Hash] params ({})
    def list_activities(params = {}, options = {})
      req = build_request(:list_activities, params)
      req.send_request(options)
    end

    # Lists the executions of a state machine that meet the filtering
    # criteria. Results are sorted by time, with the most recent execution
    # first.
    #
    # If `nextToken` is returned, there are more results available. The
    # value of `nextToken` is a unique pagination token for each page. Make
    # the call again using the returned token to retrieve the next page.
    # Keep all other arguments unchanged. Each pagination token expires
    # after 24 hours. Using an expired pagination token will return an *HTTP
    # 400 InvalidToken* error.
    #
    # <note markdown="1"> This operation is eventually consistent. The results are best effort
    # and may not reflect very recent updates and changes.
    #
    #  </note>
    #
    # @option params [required, String] :state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine whose executions
    #   is listed.
    #
    # @option params [String] :status_filter
    #   If specified, only list the executions whose current execution status
    #   matches the given filter.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `nextToken` to obtain further pages of results. The default is 100 and
    #   the maximum allowed page size is 1000. A value of 0 uses the default.
    #
    #   This is only an upper limit. The actual number of results returned per
    #   call might be fewer than the specified maximum.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged. Each pagination token expires
    #   after 24 hours. Using an expired pagination token will return an *HTTP
    #   400 InvalidToken* error.
    #
    # @return [Types::ListExecutionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExecutionsOutput#executions #executions} => Array&lt;Types::ExecutionListItem&gt;
    #   * {Types::ListExecutionsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_executions({
    #     state_machine_arn: "Arn", # required
    #     status_filter: "RUNNING", # accepts RUNNING, SUCCEEDED, FAILED, TIMED_OUT, ABORTED
    #     max_results: 1,
    #     next_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.executions #=> Array
    #   resp.executions[0].execution_arn #=> String
    #   resp.executions[0].state_machine_arn #=> String
    #   resp.executions[0].name #=> String
    #   resp.executions[0].status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT", "ABORTED"
    #   resp.executions[0].start_date #=> Time
    #   resp.executions[0].stop_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListExecutions AWS API Documentation
    #
    # @overload list_executions(params = {})
    # @param [Hash] params ({})
    def list_executions(params = {}, options = {})
      req = build_request(:list_executions, params)
      req.send_request(options)
    end

    # Lists the existing state machines.
    #
    # If `nextToken` is returned, there are more results available. The
    # value of `nextToken` is a unique pagination token for each page. Make
    # the call again using the returned token to retrieve the next page.
    # Keep all other arguments unchanged. Each pagination token expires
    # after 24 hours. Using an expired pagination token will return an *HTTP
    # 400 InvalidToken* error.
    #
    # <note markdown="1"> This operation is eventually consistent. The results are best effort
    # and may not reflect very recent updates and changes.
    #
    #  </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `nextToken` to obtain further pages of results. The default is 100 and
    #   the maximum allowed page size is 1000. A value of 0 uses the default.
    #
    #   This is only an upper limit. The actual number of results returned per
    #   call might be fewer than the specified maximum.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged. Each pagination token expires
    #   after 24 hours. Using an expired pagination token will return an *HTTP
    #   400 InvalidToken* error.
    #
    # @return [Types::ListStateMachinesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStateMachinesOutput#state_machines #state_machines} => Array&lt;Types::StateMachineListItem&gt;
    #   * {Types::ListStateMachinesOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_state_machines({
    #     max_results: 1,
    #     next_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.state_machines #=> Array
    #   resp.state_machines[0].state_machine_arn #=> String
    #   resp.state_machines[0].name #=> String
    #   resp.state_machines[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListStateMachines AWS API Documentation
    #
    # @overload list_state_machines(params = {})
    # @param [Hash] params ({})
    def list_state_machines(params = {}, options = {})
      req = build_request(:list_state_machines, params)
      req.send_request(options)
    end

    # List tags for a given resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the Step Functions state machine or
    #   activity.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Used by workers to report that the task identified by the `taskToken`
    # failed.
    #
    # @option params [required, String] :task_token
    #   The token that represents this task. Task tokens are generated by the
    #   service when the tasks are assigned to a worker (see
    #   GetActivityTask::taskToken).
    #
    # @option params [String] :error
    #   The error code of the failure.
    #
    # @option params [String] :cause
    #   A more detailed explanation of the cause of the failure.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_task_failure({
    #     task_token: "TaskToken", # required
    #     error: "SensitiveError",
    #     cause: "SensitiveCause",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/SendTaskFailure AWS API Documentation
    #
    # @overload send_task_failure(params = {})
    # @param [Hash] params ({})
    def send_task_failure(params = {}, options = {})
      req = build_request(:send_task_failure, params)
      req.send_request(options)
    end

    # Used by workers to report to the service that the task represented by
    # the specified `taskToken` is still making progress. This action resets
    # the `Heartbeat` clock. The `Heartbeat` threshold is specified in the
    # state machine's Amazon States Language definition. This action does
    # not in itself create an event in the execution history. However, if
    # the task times out, the execution history contains an
    # `ActivityTimedOut` event.
    #
    # <note markdown="1"> The `Timeout` of a task, defined in the state machine's Amazon States
    # Language definition, is its maximum allowed duration, regardless of
    # the number of SendTaskHeartbeat requests received.
    #
    #  </note>
    #
    # <note markdown="1"> This operation is only useful for long-lived tasks to report the
    # liveliness of the task.
    #
    #  </note>
    #
    # @option params [required, String] :task_token
    #   The token that represents this task. Task tokens are generated by the
    #   service when the tasks are assigned to a worker (see
    #   GetActivityTaskOutput$taskToken).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_task_heartbeat({
    #     task_token: "TaskToken", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/SendTaskHeartbeat AWS API Documentation
    #
    # @overload send_task_heartbeat(params = {})
    # @param [Hash] params ({})
    def send_task_heartbeat(params = {}, options = {})
      req = build_request(:send_task_heartbeat, params)
      req.send_request(options)
    end

    # Used by workers to report that the task identified by the `taskToken`
    # completed successfully.
    #
    # @option params [required, String] :task_token
    #   The token that represents this task. Task tokens are generated by the
    #   service when the tasks are assigned to a worker (see
    #   GetActivityTaskOutput$taskToken).
    #
    # @option params [required, String] :output
    #   The JSON output of the task.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_task_success({
    #     task_token: "TaskToken", # required
    #     output: "SensitiveData", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/SendTaskSuccess AWS API Documentation
    #
    # @overload send_task_success(params = {})
    # @param [Hash] params ({})
    def send_task_success(params = {}, options = {})
      req = build_request(:send_task_success, params)
      req.send_request(options)
    end

    # Starts a state machine execution.
    #
    # <note markdown="1"> `StartExecution` is idempotent. If `StartExecution` is called with the
    # same name and input as a running execution, the call will succeed and
    # return the same response as the original request. If the execution is
    # closed or if the input is different, it will return a 400
    # `ExecutionAlreadyExists` error. Names can be reused after 90 days.
    #
    #  </note>
    #
    # @option params [required, String] :state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine to execute.
    #
    # @option params [String] :name
    #   The name of the execution. This name must be unique for your AWS
    #   account, region, and state machine for 90 days. For more information,
    #   see [ Limits Related to State Machine Executions][1] in the *AWS Step
    #   Functions Developer Guide*.
    #
    #   A name must *not* contain:
    #
    #   * whitespace
    #
    #   * brackets `< > \{ \} [ ]`
    #
    #   * wildcard characters `? *`
    #
    #   * special characters `` " # % \ ^ | ~ ` $ & , ; : / ``
    #
    #   * control characters (`U+0000-001F`, `U+007F-009F`)
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions
    #
    # @option params [String] :input
    #   The string that contains the JSON input data for the execution, for
    #   example:
    #
    #   `"input": "\{"first_name" : "test"\}"`
    #
    #   <note markdown="1"> If you don't include any JSON input data, you still must include the
    #   two braces, for example: `"input": "\{\}"`
    #
    #    </note>
    #
    # @return [Types::StartExecutionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartExecutionOutput#execution_arn #execution_arn} => String
    #   * {Types::StartExecutionOutput#start_date #start_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_execution({
    #     state_machine_arn: "Arn", # required
    #     name: "Name",
    #     input: "SensitiveData",
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_arn #=> String
    #   resp.start_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StartExecution AWS API Documentation
    #
    # @overload start_execution(params = {})
    # @param [Hash] params ({})
    def start_execution(params = {}, options = {})
      req = build_request(:start_execution, params)
      req.send_request(options)
    end

    # Stops an execution.
    #
    # @option params [required, String] :execution_arn
    #   The Amazon Resource Name (ARN) of the execution to stop.
    #
    # @option params [String] :error
    #   The error code of the failure.
    #
    # @option params [String] :cause
    #   A more detailed explanation of the cause of the failure.
    #
    # @return [Types::StopExecutionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopExecutionOutput#stop_date #stop_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_execution({
    #     execution_arn: "Arn", # required
    #     error: "SensitiveError",
    #     cause: "SensitiveCause",
    #   })
    #
    # @example Response structure
    #
    #   resp.stop_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/StopExecution AWS API Documentation
    #
    # @overload stop_execution(params = {})
    # @param [Hash] params ({})
    def stop_execution(params = {}, options = {})
      req = build_request(:stop_execution, params)
      req.send_request(options)
    end

    # Add a tag to a Step Functions resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the Step Functions state machine or
    #   activity.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The list of tags to add to a resource.
    #
    #   Tags may only contain unicode letters, digits, whitespace, or these
    #   symbols: `_ . : / = + - @`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Remove a tag from a Step Functions resource
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the Step Functions state machine or
    #   activity.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tags to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing state machine by modifying its `definition` and/or
    # `roleArn`. Running executions will continue to use the previous
    # `definition` and `roleArn`. You must include at least one of
    # `definition` or `roleArn` or you will receive a
    # `MissingRequiredParameter` error.
    #
    # <note markdown="1"> All `StartExecution` calls within a few seconds will use the updated
    # `definition` and `roleArn`. Executions started immediately after
    # calling `UpdateStateMachine` may use the previous state machine
    # `definition` and `roleArn`.
    #
    #  </note>
    #
    # @option params [required, String] :state_machine_arn
    #   The Amazon Resource Name (ARN) of the state machine.
    #
    # @option params [String] :definition
    #   The Amazon States Language definition of the state machine. See
    #   [Amazon States Language][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of the IAM role of the state machine.
    #
    # @return [Types::UpdateStateMachineOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStateMachineOutput#update_date #update_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_state_machine({
    #     state_machine_arn: "Arn", # required
    #     definition: "Definition",
    #     role_arn: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.update_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/states-2016-11-23/UpdateStateMachine AWS API Documentation
    #
    # @overload update_state_machine(params = {})
    # @param [Hash] params ({})
    def update_state_machine(params = {}, options = {})
      req = build_request(:update_state_machine, params)
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
      context[:gem_name] = 'aws-sdk-states'
      context[:gem_version] = '1.19.0'
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
