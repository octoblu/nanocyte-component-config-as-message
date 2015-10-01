ReturnValue = require 'nanocyte-component-return-value'
ConfigAsMessage = require '../src/config-as-message'

describe 'ConfigAsMessage', ->
  beforeEach ->
    @sut = new ConfigAsMessage

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope', ->
      it 'should return the message', ->
        expect(@sut.onEnvelope({message: 'anything'})).to.deep.equal 'anything'
