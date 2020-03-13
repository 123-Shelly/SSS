class Animal
	def eat
		puts "好吃"
	end
	def walk
		puts "GO"
	end
end

class Cat < Animal
	
end

cc = Cat.new
cc.eat


class Dog < Animal
end


dd = Dog.new
dd.walk

 #   < 繼承