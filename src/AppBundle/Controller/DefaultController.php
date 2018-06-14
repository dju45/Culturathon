<?php

namespace AppBundle\Controller;

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
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        return $this->render('default/index.html.twig');
    }

    /**
     * @Route("/pokedex", name="pokedex")
     */
    public function pokedexAction(Request $request)
    {
        // replace this example code with whatever you need
        return $this->render('default/pokedex.html.twig', [
            'base_dir' => realpath($this->getParameter('kernel.project_dir')).DIRECTORY_SEPARATOR,
        ]);
    }
}
