module Peeves
  module ProtxServices
    
    BASE_URL = {
      :server => {
        :simulator  => 'https://ukvpstest.protx.com/VSPSimulator/VSPServerGateway.asp',
        :test       => 'https://ukvpstest.protx.com/vspgateway/service',
        :live       => 'https://ukvps.protx.com/vspgateway/service'
      },
      :direct => {
        :simulator  => 'https://ukvpstest.protx.com/VSPSimulator/',
        :test       => 'https://ukvpstest.protx.com/vspgateway/service',
        :live       => 'https://ukvps.protx.com/vspgateway/service'
      }
    }

    SERVICE = {
      :server => {
        :simulator => {
          :payment      => '?Service=VendorRegisterTx',
          :release      => '?Service=VendorReleaseTx',
          :abort        => '?Service=VendorAbortTx',
          :refund       => '?Service=VendorRefundTx',
          :repeat       => '?Service=VendorRepeatTx',
          :void         => '?Service=VendorVoidTx',
          :manual       => lambda { raise Peeves::Error, "MANUAL transactions not supported in simulator mode" },
          :directrefund => lambda { raise Peeves::Error, "DIRECTREFUND transactions not supported in simulator mode" },
          :authorise    => '?Service=VendorAuthoriseTx',
          :cancel       => '?Service=VendorCancelTx'
        },
        :test => {
          :payment      => 'vspserver-register.vsp',
          :release      => 'release.vsp',
          :abort        => 'abort.vsp',
          :refund       => 'refund.vsp',
          :repeat       => 'repeat.vsp',
          :void         => 'void.vsp',
          :manual       => 'manual.vsp',
          :directrefund => 'directrefund.vsp',
          :authorise    => 'authorise.vsp',
          :cancel       => 'cancel.vsp'
        },
        :live => {
          :payment      => 'vspserver-register.vsp',
          :release      => 'release.vsp',
          :abort        => 'abort.vsp',
          :refund       => 'refund.vsp',
          :repeat       => 'repeat.vsp',
          :void         => 'void.vsp',
          :manual       => 'manual.vsp',
          :directrefund => 'directrefund.vsp',
          :authorise    => 'authorise.vsp',
          :cancel       => 'cancel.vsp'
        }
      },
      :direct => {
        :simulator => {
          :payment      => 'VSPDirectGateway.asp',
          :release      => 'VSPDirectGateway.asp?Service=VendorReleaseTx',
          :abort        => 'VSPDirectGateway.asp?Service=VendorAbortTx',
          :refund       => 'VSPDirectGateway.asp?Service=VendorRefundTx',
          :repeat       => 'VSPDirectGateway.asp?Service=VendorRepeatTx',
          :void         => 'VSPDirectGateway.asp?Service=VendorVoidTx',
          :manual       => lambda { raise Peeves::Error, "MANUAL transactions not supported in simulator mode" },
          :directrefund => lambda { raise Peeves::Error, "DIRECTREFUND transactions not supported in simulator mode" },
          :authorise    => 'VSPDirectGateway.asp?Service=VendorAuthoriseTx',
          :cancel       => 'VSPDirectGateway.asp?Service=VendorCancelTx',
          :threedee     => 'VSPDirectCallback.asp'
        },
        :test => {
          :payment      => 'vspdirect-register.vsp',
          :release      => 'release.vsp',
          :abort        => 'abort.vsp',
          :refund       => 'refund.vsp',
          :repeat       => 'repeat.vsp',
          :void         => 'void.vsp',
          :manual       => 'manual.vsp',
          :directrefund => 'directrefund.vsp',
          :authorise    => 'authorise.vsp',
          :cancel       => 'cancel.vsp',
          :threedee     => 'direct3dcallback.vsp'
        },
        :live => {
          :payment      => 'vspdirect-register.vsp',
          :release      => 'release.vsp',
          :abort        => 'abort.vsp',
          :refund       => 'refund.vsp',
          :repeat       => 'repeat.vsp',
          :void         => 'void.vsp',
          :manual       => 'manual.vsp',
          :directrefund => 'directrefund.vsp',
          :authorise    => 'authorise.vsp',
          :cancel       => 'cancel.vsp',
          :threedee     => 'direct3dcallback.vsp'
        }
      }
    }
  end
end