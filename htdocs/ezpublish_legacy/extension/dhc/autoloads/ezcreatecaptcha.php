<?php
//
// ## BEGIN COPYRIGHT, LICENSE AND WARRANTY NOTICE ##
// SOFTWARE NAME: eZ Website Toolbar
// SOFTWARE RELEASE: 5.3.0
// COPYRIGHT NOTICE: Copyright (C) 1999-2014 eZ Systems AS
// SOFTWARE LICENSE: GNU General Public License v2.0
// NOTICE: >
//  This program is free software; you can redistribute it and/or
//  modify it under the terms of version 2.0  of the GNU General
//  Public License as published by the Free Software Foundation.
//
//  This program is distributed in the hope that it will be useful,
//   but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of version 2.0 of the GNU General
//  Public License along with this program; if not, write to the Free
//  Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
//  MA 02110-1301, USA.
// ## END COPYRIGHT, LICENSE AND WARRANTY NOTICE ##
//

class eZCreateCaptcha
{
    function eZCreateCaptcha()
    {
    }

    function operatorList()
    {
        return array( 'ezcreatecaptcha' );
    }

    function namedParameterPerOperator()
    {
        return true;
    }

    function namedParameterList()
    {
        return array( 'ezcreatecaptcha' => array());
    }

    function modify( $tpl, $operatorName, $operatorParameters, &$rootNamespace, &$currentNamespace, &$operatorValue, &$namedParameters )
    {
        
        switch ( $operatorName )
        {
            case 'ezcreatecaptcha':
            {   
                /* Create the Captcha Code */
                $md5_hash = md5(rand(0,999)); 
                $security_code = substr($md5_hash, 15, 8);                                        
                
                /* Verify if we already have a captcha set in our cookie */
                if (empty($_COOKIE["captcha"])) {  
                    setcookie("captcha",  $security_code, time()+60);
                    /* Don't create the image if it already exists */
                    if (!file_exists($_SERVER["DOCUMENT_ROOT"].'/design/newscenter/images/captcha/'.$security_code.'.png')) {
                        $create_image = shell_exec('echo '.$security_code.'|convert -resize 140x15! -channel RGBA -density 144 -bordercolor none -background none -pointsize 600 text:- -fill black '.$_SERVER["DOCUMENT_ROOT"].'/design/newscenter/images/captcha/'.$security_code.'.png 2>&1');
                    }                    
                    $operatorValue = $_COOKIE["captcha"];
                } else {
                    $operatorValue = $_COOKIE["captcha"];                
                }
                
            } break;
        }
    }
}

?>