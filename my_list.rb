# Load my_enumerable module
require_relative 'My_Enumerable'
# class MyList
class MyList
  def initialize(*list)
    @list = list
  end
  include MyEnumerable
  def each
    @list.each { |value| yield value if block_given? }
  end
end
