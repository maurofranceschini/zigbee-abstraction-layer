###
  remove-from-address-map-confirm.coffee
  https://github.com/maurofranceschini/zigbee-abstraction-layer

  (C) 2014-2014 Mauro Franceschini
  Released under Apache 2 License.
###

ZtcFrame = require "../../ztc-frame"
_ = require "lodash"

class RemoveFromAddressMapConfirm extends ZtcFrame
  @OPCODE_GROUP = 0xA4
  @OPCODE = 0xC1

  @Status =
    SUCCESS: 0x00

  constructor: (parser) ->
    super RemoveFromAddressMapConfirm.OPCODE_GROUP, RemoveFromAddressMapConfirm.OPCODE
    parser.uint8 "status"
    parser.tap () => _.assign this, parser.vars

ZtcFrame.registerFrame RemoveFromAddressMapConfirm

module.exports = RemoveFromAddressMapConfirm