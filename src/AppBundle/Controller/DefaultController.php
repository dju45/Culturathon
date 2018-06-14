<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Artwork;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
    public function indexAction()
    {
        $em->$this->getDoctrine()->getManager();
        $artworks= $em->getRepository(Artwork::class)->countSeenArtworksInOnCurrent();

        return $this->render('default/index.html.twig', [
            'artworks' => $artworks,
        ]);
    }
}
