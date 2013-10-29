require 'rspec'

require File.dirname(__FILE__) + "/../lib/boolean_accessor"

describe BooleanAccessor do
  before do
    class Foo
      battr_accessor :bar, :baz, :qux, :quux
      battr_reader :corge, :grault, :waldo

      def initialize
        @bar = true
        @baz = false
        @corge = true
        @grault = false
      end
    end

    @foo = Foo.new
  end

  describe '.battr_accessor' do
    it 'should be true when attribute is true' do
      expect(@foo.bar).to be_true
      expect(@foo.bar?).to be_true
    end

    it 'should be false when attribute is false' do
      expect(@foo.baz).to be_false
      expect(@foo.baz?).to be_false
    end

    it 'should be false when attribute is nil' do
      expect(@foo.qux).to be_nil
      expect(@foo.qux?).to be_false
    end

    it 'can set boolean' do
      @foo.quux = true
      expect(@foo.quux).to be_true
      expect(@foo.quux?).to be_true
    end
  end

  describe '.battr_reader' do
    it 'should be true when attribute is true' do
      expect(@foo.corge).to be_true
      expect(@foo.corge?).to be_true
    end

    it 'should be false when attribute is false' do
      expect(@foo.grault).to be_false
      expect(@foo.grault?).to be_false
    end

    it 'should be false when attribute is nil' do
      expect(@foo.waldo).to be_nil
      expect(@foo.waldo?).to be_false
    end

    it 'raise NoMethodError when setting attribute' do
      expect{ @foo.waldo = true }.to raise_error(NoMethodError)
    end
  end
end
