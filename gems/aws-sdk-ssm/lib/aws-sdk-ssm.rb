# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-ssm/types'
require_relative 'aws-sdk-ssm/client_api'
require_relative 'aws-sdk-ssm/client'
require_relative 'aws-sdk-ssm/errors'
require_relative 'aws-sdk-ssm/resource'
require_relative 'aws-sdk-ssm/customizations'

# This module provides support for Amazon Simple Systems Manager (SSM). This module is available in the
# `aws-sdk-ssm` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Simple Systems Manager (SSM) all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SSM::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::SSM

  GEM_VERSION = '1.52.0'

end
