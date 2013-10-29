require "boolean_accessor/version"

module BooleanAccessor
  def boolean_attr_accessor(*args)
    attr_accessor(*args)
    alias_question(args)
  end

  def boolean_attr_reader(*args)
    attr_reader(*args)
    alias_question(args)
  end

  alias_method :battr_accessor, :boolean_attr_accessor
  alias_method :battr_reader, :boolean_attr_reader

  private
  def alias_question(attrs)
    attrs.each{ |attr| define_method("#{attr}?"){ send(attr) || false} }
  end
end

class Object
  extend BooleanAccessor
end
