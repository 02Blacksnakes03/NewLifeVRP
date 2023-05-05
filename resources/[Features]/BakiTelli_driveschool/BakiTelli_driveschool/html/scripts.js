// question variables
var questionNumber = 1;
var userAnswer = [];
var goodAnswer = [];
var questionUsed = [];
var nbQuestionToAnswer = 10; // don't forget to change the progress bar max value in html
var nbAnswerNeeded = 5; // out of nbQuestionToAnswer
var nbPossibleQuestions = 10; // number of questions in database questions.js
var lastClick = 0;

function getRandomQuestion() {
	var random = Math.floor(Math.random() * nbPossibleQuestions);

	while (true) {
		if (questionUsed.indexOf(random) === -1) {
			break;
		}

		random = Math.floor(Math.random() * nbPossibleQuestions);
	}

	questionUsed.push(random);

	return random;
}

// Partial Functions
function closeMain() {
	$(".home").css("display", "none");
	$(".bg-1").css("display", "none");
	$('#box').empty();

}

function openMain() {
	$(".home").css("display", "block");
}
function closeAll() {
	$(".body").css("display", "none");
}
function openQuestionnaire() {
	$(".questionnaire-container").css("display", "block");
	$(".bottom-menu").css("display", "none");
	$(".bottom-menu-2").css("display", "block");
	$(".header").css("display", "none");
	$(".question-container").css("height", "20vw");
	$(".question-container").css("margin-top", "4vw");

	$(".header-2").css("display", "block");

	var randomQuestion = getRandomQuestion();

	$("#questionNumero").html("Question: " + questionNumber);
	$("#question").html(tableauQuestion[randomQuestion].question);
	$(".answerA").html(tableauQuestion[randomQuestion].propositionA);
	$(".answerB").html(tableauQuestion[randomQuestion].propositionB);
	$(".answerC").html(tableauQuestion[randomQuestion].propositionC);
	$(".answerD").html(tableauQuestion[randomQuestion].propositionD);
	$('input[name=question]').attr('checked', false);

	goodAnswer.push(tableauQuestion[randomQuestion].reponse);
	$(".questionnaire-container .progression").val(questionNumber - 1);
}
function openResultGood() {
	$(".resultGood").css("display", "block");
	$(".buttonspot").css("margin-left", "-6vw");
}
function openResultBad() {
	$(".resultBad").css("display", "block");
	$(".buttonspot").css("margin-left", "-6vw");
}
function openMenu() {
	$("body").css("display", "block");
	$(".full-screen").css("display", "none");
	$(".bg").css("display", "block");
}
function openContainer() {
	$(".bg-1").css("display", "block");
	$("body").css("display", "block");

}
function closeContainer() {
	$(".bg-1").css("display", "none");
	$("body").css("display", "none");

}

// Listen for NUI Events
window.addEventListener('message', function (event) {
	var item = event.data;

	// Open & Close main window
	if (item.openQuestion == true) {
		openContainer();
		openMain();
	}

	if (item.openQuestion == false) {
		closeContainer();
		closeMain();
	}
	if (item.openSection == "openMainMenu") {
		openMenu();
	}
	if (item.openSection == "box-1-lock") {
		html = `
		<div class="box-1-main">
			<div class="box-main-text-main">CAR <span>LICENSE</span></div>
			<div class="box-s-text-main">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Purus sem pulvinar nibh maecenas.</div>
			<div class="box-app-main"><t>APPLICATION</t></div>
			<div class="box-app-price-main">PRICE : $1000</div>
			<div class="box-avaible-main"><t>AVAIBLE</t></div>
			<div class="box-1-img-main"></div>
		</div>
        `

        $('#box').prepend(html);
	}
	if (item.openSection == "box-1") {
		html = `
		<div class="box-1-main">
		<div class="box-main-text-main">CAR <span>LICENSE</span></div>
		<div class="box-s-text-main">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Purus sem pulvinar nibh maecenas.</div>
		<div class="box-app-main" onclick="app1()"><t>APPLICATION</t></div>
		<div class="box-app-price-main">PRICE : $1000</div>
		<div class="box-avaible-main"><t>NOT AVAIBLE</t></div>
		<div class="box-1-img-main"></div>
	</div>
        `

        $('#box').prepend(html);
	}
	if (item.openSection == "box-2-lock") {
		html = `
		<div class="box-2-main">
			<div class="box-main-text-2-main">MOTORCYCLE</div>
			<div class="box-main-text-2-span-main">LICENSE</div>
			<div class="box-s-text-2-main">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Purus sem pulvinar nibh maecenas.</div>
			<div class="box-app-main" ><t>APPLICATION</t></div>
			<div class="box-app-price-2-main">PRICE : $1000</div>
			<div class="box-avaible-main" ><t>AVAIBLE</t></div>
			<div class="box-2-img-main"></div>
		</div>
        `

        $('#box').prepend(html);
	}
	if (item.openSection == "box-2") {
		html = `
			<div class="box-2-main">
			<div class="box-main-text-2-main">MOTORCYCLE</div>
			<div class="box-main-text-2-span-main">LICENSE</div>
			<div class="box-s-text-2-main">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Purus sem pulvinar nibh maecenas.</div>
			<div class="box-app-main" onclick="app2()"><t>APPLICATION</t></div>
			<div class="box-app-price-2-main">PRICE : $1000</div>
			<div class="box-avaible-main"><t>NOT AVAIBLE</t></div>
			<div class="box-2-img-main"></div>
		</div>
        `

        $('#box').prepend(html);
	}
	if (item.openSection == "box-3-lock") {
		html = `
		<div class="box-3-main">
			<div class="box-main-text-3-main">TRUCK <span>LICENSE</span></div>
			<div class="box-s-text-main">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Purus sem pulvinar nibh maecenas.</div>
			<div class="box-app-2-main"><t>APPLICATION</t></div>
			<div class="box-app-price-3-main">PRICE : $1000</div>
			<div class="box-avaible-main"><t>AVAIBLE</t></div>
			<div class="box-3-img-main"></div>
		</div>
        `

        $('#box').prepend(html);
	}

	if (item.type == "update") {
        $('.bottom-wallet-money span').html(event.data.cash);
        $('.bottom-wallet-money-main span').html(event.data.cash);
        $('.name').html(event.data.name);
        $('.name-main').html(event.data.name);
	}
	if (item.openSection == "box-3") {
		html = `
		<div class="box-3-main">
		<div class="box-main-text-3-main">TRUCK <span>LICENSE</span></div>
		<div class="box-s-text-main">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Purus sem pulvinar nibh maecenas.</div>
		<div class="box-app-2-main" onclick="app3()"><t>APPLICsATION</t></div>
		<div class="box-app-price-3-main">PRICE : $1000</div>
		<div class="box-avaible-main"><t>NOT AVAIBLE</t></div>
		<div class="box-3-img-main"></div>
	</div>
        `

        $('#box').prepend(html);
	}
	// Open sub-windows / partials
	if (item.openSection == "question") {
		closeAll();
		openQuestionnaire();
	}
});

// Handle Button Presses
$(".btnQuestion").click(function () {
	$.post('http://BakiTelli_driveschool/question', JSON.stringify({}));
});

$(".close-button").click(function () {
	closeMain();
	closeContainer();
	$.post('http://BakiTelli_driveschool/closenui', JSON.stringify({}));

});

$(".btnClose").click(function () {
	$.post('http://BakiTelli_driveschool/close', JSON.stringify({}));
	userAnswer = [];
	goodAnswer = [];
	questionUsed = [];
	questionNumber = 1;
});

function kilit() {
	$.post('http://BakiTelli_driveschool/kilit', JSON.stringify({}));

}

$(".btnKick").click(function () {
	$.post('http://BakiTelli_driveschool/kick', JSON.stringify({}));
	userAnswer = [];
	goodAnswer = [];
	questionUsed = [];
	questionNumber = 1;
});

function app1() {
	$("body").css("display", "none");
	console.log("tw kaka 1")
	$.post('http://BakiTelli_driveschool/drive', JSON.stringify({}));
}

function app2() {
	$("body").css("display", "none");
	console.log("tw kaka 2")
	$.post('http://BakiTelli_driveschool/drive2', JSON.stringify({}));
}

function app3() {
	console.log("sdaldşasd")
	$("body").css("display", "none");
	console.log("tw kaka 3")
	$.post('http://BakiTelli_driveschool/drive3', JSON.stringify({}));
}


$("#answerA").click(function () {
	$(".q-big-A").css("border", "0.1vw solid #39DF85");
	$(".answerA").css("border", "0.1vw solid #39DF85");

	$(".q-big-B").css("border", "1px solid rgba(255, 255, 255, 0.18)");
	$(".answerB").css("border", "1px solid rgba(255, 255, 255, 0.18)");

	$(".q-big-C").css("border", "1px solid rgba(255, 255, 255, 0.18)");
	$(".answerC").css("border", "1px solid rgba(255, 255, 255, 0.18)");

	$(".q-big-D").css("border", "1px solid rgba(255, 255, 255, 0.18)");
	$(".answerD").css("border", "1px solid rgba(255, 255, 255, 0.18)");

});
$("#answerB").click(function () {
	$(".q-big-B").css("border", "0.1vw solid #39DF85");
	$(".answerB").css("border", "0.1vw solid #39DF85");

	$(".q-big-A").css("border", "1px solid rgba(255, 255, 255, 0.18)");
	$(".answerA").css("border", "1px solid rgba(255, 255, 255, 0.18)");

	$(".q-big-C").css("border", "1px solid rgba(255, 255, 255, 0.18)");
	$(".answerC").css("border", "1px solid rgba(255, 255, 255, 0.18)");

	$(".q-big-D").css("border", "1px solid rgba(255, 255, 255, 0.18)");
	$(".answerD").css("border", "1px solid rgba(255, 255, 255, 0.18)");
});
$("#answerC").click(function () {
	$(".q-big-C").css("border", "0.1vw solid #39DF85");
	$(".answerC").css("border", "0.1vw solid #39DF85");

	$(".q-big-B").css("border", "1px solid rgba(255, 255, 255, 0.18)");
	$(".answerB").css("border", "1px solid rgba(255, 255, 255, 0.18)");

	$(".q-big-A").css("border", "1px solid rgba(255, 255, 255, 0.18)");
	$(".answerA").css("border", "1px solid rgba(255, 255, 255, 0.18)");

	$(".q-big-D").css("border", "1px solid rgba(255, 255, 255, 0.18)");
	$(".answerD").css("border", "1px solid rgba(255, 255, 255, 0.18)");
});
$("#answerD").click(function () {
	$(".q-big-D").css("border", "0.1vw solid #39DF85");
	$(".answerD").css("border", "0.1vw solid #39DF85");

	$(".q-big-B").css("border", "1px solid rgba(255, 255, 255, 0.18)");
	$(".answerB").css("border", "1px solid rgba(255, 255, 255, 0.18)");

	$(".q-big-C").css("border", "1px solid rgba(255, 255, 255, 0.18)");
	$(".answerC").css("border", "1px solid rgba(255, 255, 255, 0.18)");

	$(".q-big-A").css("border", "1px solid rgba(255, 255, 255, 0.18)");
	$(".answerA").css("border", "1px solid rgba(255, 255, 255, 0.18)");
});

$(".submit").click(function () {
$(".q-big-D").css("border", "1px solid rgba(255, 255, 255, 0.18)");
$(".answerD").css("border", "1px solid rgba(255, 255, 255, 0.18)");

$(".q-big-B").css("border", "1px solid rgba(255, 255, 255, 0.18)");
$(".answerB").css("border", "1px solid rgba(255, 255, 255, 0.18)");

$(".q-big-C").css("border", "1px solid rgba(255, 255, 255, 0.18)");
$(".answerC").css("border", "1px solid rgba(255, 255, 255, 0.18)");

$(".q-big-A").css("border", "1px solid rgba(255, 255, 255, 0.18)");
$(".answerA").css("border", "1px solid rgba(255, 255, 255, 0.18)");
});
// Handle Form Submits
$("#question-form").submit(function (e) {
	e.preventDefault();

	if (questionNumber != nbQuestionToAnswer) {
		//question 1 to 9: pushing answer in array
		closeAll();
		userAnswer.push($('input[name="question"]:checked').val());
		questionNumber++;
		openQuestionnaire();
	} else {
		// question 10: comparing arrays and sending number of good answers
		userAnswer.push($('input[name="question"]:checked').val());
		var nbGoodAnswer = 0;
		for (i = 0; i < nbQuestionToAnswer; i++) {
			if (userAnswer[i] == goodAnswer[i]) {
				nbGoodAnswer++;
			}
		}

		closeAll();
		if (nbGoodAnswer >= nbAnswerNeeded) {
			openResultGood();
		} else {
			openResultBad();
		}
	}

	return false;
});
