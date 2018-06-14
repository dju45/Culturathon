<?php
/**
 * Created by PhpStorm.
 * User: wilder17
 * Date: 14/06/18
 * Time: 14:08
 */

namespace AppBundle\Services;


use Doctrine\ORM\EntityManager;

class BadgeManager
{
    private $em;

    public function __construct(EntityManager $em)
    {
        $this->em;
    }

    public function seenArtworksInOneCurrent($userId, $current)
    {

    }
}