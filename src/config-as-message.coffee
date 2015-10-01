ReturnValue = require 'nanocyte-component-return-value'

class ConfigAsMessage extends ReturnValue
  onEnvelope: (envelope) =>
    return envelope.message

module.exports = ConfigAsMessage
