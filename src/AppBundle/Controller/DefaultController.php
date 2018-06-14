<?php

namespace AppBundle\Controller;


use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
    public function indexAction()
    {


        return $this->render('default/index.html.twig');
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
