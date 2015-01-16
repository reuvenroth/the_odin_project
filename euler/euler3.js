sum = 0
//function checking for divisibility with ifs.
function prime(num) {
	num ? % 2 !== 0 && num ? % 3 !== 0 && num ? % 5 !== 0 && num ? % 7 !== 0 {
		return sum += num
	}
}
//individual test spelled out
num = 13195;
for (i = 0; i <= num; i++) {
	if (i % 2 !== 0 && i % 3 !== 0 && i % 5 !== 0 && i % 7 !== 0) {
		console.log(num);
	}
}
//Working.
(function () {
  var primeFactors = [];
  var number = 600851475143;
  var i = 2;
  while (number > 1) {
    while (number % i === 0) {
      primeFactors.push(i);
      number /= i;
    }
    i++;
  }
  alert(primeFactors[primeFactors.length - 1]);
})();