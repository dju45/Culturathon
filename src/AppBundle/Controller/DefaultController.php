<?php

namespace AppBundle\Controller;


use AppBundle\Entity\ArtisticCurrent;
use AppBundle\Entity\Artwork;
use FOS\UserBundle\Model\UserInterface;
use http\Env\Request;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
//    public function indexAction()
//    {
//        $user = $this->get('security.token_storage')->getToken()->getUser();
//
//        $em = $this->getDoctrine()->getManager();
//        $currents= $em->getRepository(ArtisticCurrent::class)->seenCurrents($user);
//
//
//        $impressionisms = $em->getRepository(Artwork::class)->seenArtworksInOneCurrent($user, 'Impressionisme');
//        $cubisms = $em->getRepository(Artwork::class)->seenArtworksInOneCurrent($user, 'Cubisme');
//        $fauvisms = $em->getRepository(Artwork::class)->seenArtworksInOneCurrent($user, 'Fauvisme');
//
//        $nbImpressionism = $em->getRepository(Artwork::class)->seenArtworksNbInOneCurrent($user, 'Impressionisme');
//        $nbCubism = $em->getRepository(Artwork::class)->seenArtworksNbInOneCurrent($user, 'Cubisme');
//        $nbFauvism = $em->getRepository(Artwork::class)->seenArtworksNbInOneCurrent($user, 'Fauvisme');
//
//        return $this->render('default/index.html.twig', [
//            'currents' => $currents,
//            'user' => $user,
//            'impressionisms' => $impressionisms,
//            'cubisms' => $cubisms,
//            'fauvisms' => $fauvisms,
//            'nbImpressionism' => $nbImpressionism,
//            'nbCubism' => $nbCubism,
//            'nbFauvism' => $nbFauvism,
//        ]);
//    }

    /**
     * @Route("/", name="homepage")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $currents= $em->getRepository(ArtisticCurrent::class)->findAll();

        foreach ($currents as $current) {
            $artworks[$current->getName()]= $em->getRepository(Artwork::class)->findByCurrent($current);
        }


        return $this->render('default/index.html.twig', [
            'artworksByCurrent' => $artworks,
        ]);
    }





    /**
     * @Route("/pokedex", name="pokedex")
     */
    public function pokedexAction()
    {
        return $this->render('default/pokedex.html.twig', [
            'base_dir' => realpath($this->getParameter('kernel.project_dir')).DIRECTORY_SEPARATOR,
        ]);
    }

    /**
     * @Route("/museum", name="museum")
     */
    public function museumAction()
    {

        return $this->render('museum/index.html.twig');
    }


}
