###
  deregister-endpoint-confirm.coffee
  https://github.com/maurofranceschini/zigbee-abstraction-layer

  (C) 2014-2014 Mauro Franceschini
  Released under Apache 2 License.
###

ZtcFrame = require "../../ztc-frame"
_ = require "lodash"

class DeregisterEndpointConfirm extends ZtcFrame
  @OPCODE_GROUP = 0xA4
  @OPCODE = 0x0A

  constructor: (parser) ->
    super DeregisterEndpointConfirm.OPCODE_GROUP, DeregisterEndpointConfirm.OPCODE
    parser.uint8 "status"
    parser.tap () => _.assign this, parser.vars

ZtcFrame.registerFrame DeregisterEndpointConfirm

module.exports = DeregisterEndpointConfirm