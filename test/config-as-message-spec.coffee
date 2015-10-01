ReturnValue = require 'nanocyte-component-return-value'
ConfigAsMessage = require '../src/config-as-message'

describe 'ConfigAsMessage', ->
  beforeEach ->
    @sut = new ConfigAsMessage

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope', ->
      beforeEach ->
        envelope =
          config:
            tea: 'time'

        @result = @sut.onEnvelope envelope

      it 'should return the message', ->
        expect(@result).to.deep.equal tea: 'time'

    describe 'when called with another envelope', ->
      beforeEach ->
        envelope =
          config:
            cuppa: 'crumpets'

        @result = @sut.onEnvelope envelope

      it 'should return the message', ->
        expect(@result).to.deep.equal cuppa: 'crumpets'
