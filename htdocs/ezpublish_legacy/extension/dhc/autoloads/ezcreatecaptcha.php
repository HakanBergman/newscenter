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
                // Create a 55x30 image
                $im = imagecreatetruecolor(55, 30);
                $red = imagecolorallocate($im, 255, 0, 0);
                $black = imagecolorallocate($im, 0, 0, 0);

                // Make the background transparent
                imagecolortransparent($im, $black);

                // Draw a red rectangle
                imagefilledrectangle($im, 4, 4, 50, 25, $red);

                // Save the image
                imagepng($im, './imagecolortransparent.png');
                imagedestroy($im);
                /* Verify if the captcha already exists */
                if (empty($_SESSION["dhc"]["captcha"])) {
                    /* Create the Captcha */
                    $md5_hash = md5(rand(0,999)); 
                    $security_code = substr($md5_hash, 15, 8);
                    $_SESSION["dhc"]["captcha"] = $security_code;
                    $operatorValue = $_SESSION["dhc"]["captcha"];
                } else {
                    $operatorValue = $_SESSION["dhc"]["captcha"];                
                }
                
            } break;
        }
    }
}

?>