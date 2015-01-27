<?php
/**
 * File containing the eZ\Publish\API\Repository\Values\Content\Query\FacetBuilder\SubtreeFacetBuilder class.
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version 2014.11.1
 *
 * @package eZ\Publish\API\Repository\Values\Content\Query\FacetBuilder
 */

namespace eZ\Publish\API\Repository\Values\Content\Query\FacetBuilder;

use eZ\Publish\API\Repository\Values\Content\Query\FacetBuilder;

/**
 * Build a Subtree facet
 *
 * If provided the search service returns a LocationFacet
 * which contains the counts for all content objects below the child locations.
 *
 * @todo: check hierarchical facets
 *
 * @package eZ\Publish\API\Repository\Values\Content\Query
 */
class LocationFacetBuilder extends FacetBuilder
{
    /**
     * The parent location
     *
     * @var \eZ\Publish\API\Repository\Values\Content\Location
     */
    public $location;
}
