<?php
/**
 * File containing the eZ\Publish\API\Repository\Values\Content\Query\Criterion\Field class.
 *
 * @copyright Copyright (C) eZ Systems AS. All rights reserved.
 * @license For full copyright and license information view LICENSE file distributed with this source code.
 * @version 2014.11.1
 */

namespace eZ\Publish\API\Repository\Values\Content\Query\Criterion;

use eZ\Publish\API\Repository\Values\Content\Query\Criterion;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion\Operator\Specifications;
use eZ\Publish\API\Repository\Values\Content\Query\CriterionInterface;

/**
 * The Field Criterion class.
 *
 * Provides content filtering based on Fields contents & values.
 */
class CustomField extends Criterion implements CriterionInterface
{
    public function getSpecifications()
    {
        return array(
            new Specifications( Operator::IN, Specifications::FORMAT_ARRAY ),
            new Specifications( Operator::EQ, Specifications::FORMAT_SINGLE ),
            new Specifications( Operator::GT, Specifications::FORMAT_SINGLE ),
            new Specifications( Operator::GTE, Specifications::FORMAT_SINGLE ),
            new Specifications( Operator::LT, Specifications::FORMAT_SINGLE ),
            new Specifications( Operator::LTE, Specifications::FORMAT_SINGLE ),
            new Specifications( Operator::LIKE, Specifications::FORMAT_SINGLE ),
            new Specifications( Operator::BETWEEN, Specifications::FORMAT_ARRAY, null, 2 ),
            new Specifications( Operator::CONTAINS, Specifications::FORMAT_SINGLE ),
        );
    }
}
