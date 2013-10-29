require "boolean_accessor/version"

module BooleanAccessor
  def boolean_attr_accessor(*attrs)
    attr_accessor(*attrs)
    alias_question(attrs)
  end

  def boolean_attr_reader(*attrs)
    attr_reader(*attrs)
    alias_question(attrs)
  end

  alias_method :battr_accessor, :boolean_attr_accessor
  alias_method :battr_reader, :boolean_attr_reader

  private
  def alias_question(attrs)
    attrs.each{ |attr| define_method("#{attr}?"){ send(attr) || false } }
  end
end

class Object
  extend BooleanAccessor
end
