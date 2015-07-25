{* Load Bootstrap *}
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">	
<link rel="stylesheet" href="{'stylesheets/flags/flags.css'|ezdesign('no')}">

{* Load Google Web Fonts *}
<link href='http://fonts.googleapis.com/css?family=Open+Sans:100,200,300,400' rel='stylesheet' type='text/css'>

{* Dynamically load CSS files from the override INI *}
{ezcss_load( array( ezini( 'StylesheetSettings', 'CSSFileList', 'design.ini' ), ezini( 'StylesheetSettings', 'FrontendCSSFileList', 'design.ini' ) ) )}
<link rel="stylesheet" type="text/css" href={"stylesheets/print.css"|ezdesign} media="print" />
