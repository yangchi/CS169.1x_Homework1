class CartesianProduct
  include Enumerable
  def initialize(input1, input2)
	  @arr1 = input1
	  @arr2 = input2
  end
	def each
		@arr1.each do |x|
			@arr2.each { |y| yield [x, y]}
		end
	end
end

c = CartesianProduct.new([:a,:b], [4,5])
c.each { |elt| puts elt.inspect }
c = CartesianProduct.new([:a,:b], [])
c.each { |elt| puts elt.inspect }
