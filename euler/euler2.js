var fibonacci = function () {
	var sum = 0;
	var prev = 0
	var current = 1
	for (var i = current + prev; i < 4000000; i = current + prev ) {
		console.log(i);
		if (i % 2 === 0) {
			sum += i;
			console.log(sum);
		}
		prev = current;
		current = i;
	}
	return sum;
};
fibonacci();