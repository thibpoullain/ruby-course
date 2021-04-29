require_relative 'so_class'

module Advanced
  def self.class_as_string(klass)
    klass.ancestors.first.name
  end

  def self.string_as_class(string)
    Kernel.const_get(string.downcase.capitalize)
  end

  def self.respond_to_each?(object)
    object.respond_to?(:each)
  end

  def self.respond_to_uniq?(object)
    object.respond_to?(:uniq)
  end

  def self.respond_to_keys?(object)
    object.respond_to?(:keys)
  end

  def self.respond_to_unexistent?(object)
    object.respond_to?(:unexistent)
  end

  def self.calculette(string)
    instance_eval string
  end

end