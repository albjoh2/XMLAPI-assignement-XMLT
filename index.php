<!--

The stories/headings inside articles should be processed using Apply Templates (see "Apply Template" Examples)
Each story should be displayed using a div tag and each heading should be displayed using the h3 tag (see "XSLT Navigation" Examples).
Using iteration, each text element inside a story should be displayed using a separate paragraph tag (see "XSLT Iteration" Examples).
The comment elements should be ignored.
Reviews and News articles should be styled distinctly (see "XSLT Conditional Styling" Example)
You must make sure that the stories that have headings between the story elements (such as "Mother of All Demos" or "Plan 9") are displayed with story elements interleaved with headings.

Update the styling (use inline or css in head element, no external css files are allowed) to make the table look distinct from the previous table e.g. change colors/background colors/fonts etc.

Use styling that clearly shows that each paragraph inside a story is a distinct element (e.g. borders/spacing/shadowing etc.)

Use styling to change the font family of the paragraph and headings so that the headings and body text have the same font family but other properties (such as size and boldness). No further styling is necessary, the default browser styling is sufficient. 
-->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    


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