<?php


if(isset($_POST['submit'])) {
	$name = $POST['name'];
	$mailFrom = $POST['mail'];
	$subject = $POST['subject'];
	$message = $POST['message'];

	$mailTo = "matteson211@hotmail.com";
	$headers = "From: ".$mailFrom;
	$txt = "Heya! You got an email from ".$name.".\n\n".message;

	mail($mailTo, $subject, $txt, $headers);
	header("Location: index.php?mailsend");
}


?>


