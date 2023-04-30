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
    table{
        border-collapse: collapse;
    }
    div{
        padding: 10px;
    }
    .inner{
        border: 0;
    }
    td{
        background-color: #fdfdfd;
    }
</style>

<?php
$xslDoc = new DOMDocument();
$xslDoc->load("xslt_response.xsl");

$xml = file_get_contents('https://wwwlab.webug.se/examples/XML/articleservice/articles?paper=' . $_POST["type"]);
$xmlDoc = new DomDocument;
$xmlDoc->preserveWhiteSpace = FALSE;
$xmlDoc->loadXML($xml);

$proc = new XSLTProcessor();
$proc->importStylesheet($xslDoc);
echo $proc->transformToXML($xmlDoc);
?> 



    
</body>
</html>