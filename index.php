

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
<style>
    *{
        font-family: 'Courier New', Courier, monospace;
    }
</style>

<?php
$xslDoc = new DOMDocument();
$xslDoc->load("xslt_select.xsl");

$xml = file_get_contents('https://wwwlab.webug.se/examples/XML/articleservice/papers/');
$xmlDoc = new DomDocument;
$xmlDoc->preserveWhiteSpace = FALSE;
$xmlDoc->loadXML($xml);

$proc = new XSLTProcessor();
$proc->importStylesheet($xslDoc);
echo $proc->transformToXML($xmlDoc);
?>



</body>
</html>