<?php


if(isset($_POST['submit'])) {
	$name = $POST['name'];
	$mailFrom = $POST['mail'];
	$subject = $POST['subject'];
	$message = $POST['message'];

	$mailTo = "inhalers@secrethighfive.com";
	$headers = "From: ".$mailFrom;
	$headers .= "Content-type: text/html; charset=UTF-8" . "\r\n";
	$txt = "Heya! You got an email from ".$name.".\n\n".message;

	mail($mailTo, $subject, $txt, $headers);
	mail('inhalers@secrethighfive.com', "testing", "testing.\nDoes this arrive?");

	header("Location: index.php?mailsend");
}


?>
