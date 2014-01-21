// function fizzbuzz {
// 	for (var i=1; i<101; i++)
// 	{
// 		if (i % 3 == 0 && i % 5 == 0) {
// 			console.log("fizzbuzz")
// 		}
// 		else if (i % 5 == 0) {
// 			console.log("buzz")
// 		}
// 		else if (i % 3 == 0) {
// 			console.log("fizz")
// 		}
// 		else {
// 			console.log(i)
// 		}
// 	}
// }

function fizzbuzz(num) {
	if (num % 3 == 0 && num % 5 == 0) {
		return "fizzbuzz";
	}
	else if (num % 5 == 0) {
		return "buzz";
	}
	else if (num % 3 == 0) {
		return "fizz";
	}
	else {
		return num;
	}
}