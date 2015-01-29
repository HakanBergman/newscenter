{* Load Bootstrap *}
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">	

{* Dynamically load CSS files from the override INI *}
{ezcss_load( array( ezini( 'StylesheetSettings', 'CSSFileList', 'design.ini' ), ezini( 'StylesheetSettings', 'FrontendCSSFileList', 'design.ini' ) ) )}
<link rel="stylesheet" type="text/css" href={"stylesheets/print.css"|ezdesign} media="print" />
