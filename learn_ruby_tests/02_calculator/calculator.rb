def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(array)
	array.inject 0, :+
end

def multiply(*array)
	array.reduce(1){|x, y| x*y}
end

def power(x, y)
	x = x ** y
end

def factorial(f)
    (1..f).reduce(:*) || f = 0
end