var multiples = function() {
	var sum = 0;
	for (i = 0; i < 1000; i += 3) {
		sum += i;
		console.log(i);
		console.log(sum);
	}
	for (i = 0; i < 1000; i += 5) {
		sum += i;
		console.log(i);
		console.log(sum);
	}
	return sum;
};
multiples();