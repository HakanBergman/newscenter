<?php
/**
 * File containing the TypeNotFound class
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version 2014.11.1
 */

namespace eZ\Publish\Core\Persistence\Legacy\Exception;

use eZ\Publish\Core\Base\Exceptions\NotFoundException;

/**
 * Exception thrown when a Type to be loaded is not found
 */
class TypeNotFound extends NotFoundException
{
    /**
     * Creates a new exception for $typeId in $status;
     *
     * @param mixed $typeId
     * @param mixed $status
     */
    public function __construct( $typeId, $status )
    {
        parent::__construct(
            'eZ\\Publish\\SPI\\Persistence\\Content\\Type',
            sprintf( 'ID: %s, Status: %s', $typeId, $status )
        );
    }
}
