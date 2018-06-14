<?php

namespace AppBundle\Controller;

use AppBundle\Entity\ArtisticCurrent;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;use Symfony\Component\HttpFoundation\Request;

/**
 * Artisticcurrent controller.
 *
 * @Route("artisticcurrent")
 */
class ArtisticCurrentController extends Controller
{
    /**
     * Lists all artisticCurrent entities.
     *
     * @Route("/", name="artisticcurrent_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $artisticCurrents = $em->getRepository('AppBundle:ArtisticCurrent')->findAll();

        return $this->render('artisticcurrent/index.html.twig', array(
            'artisticCurrents' => $artisticCurrents,
        ));
    }

    /**
     * Creates a new artisticCurrent entity.
     *
     * @Route("/new", name="artisticcurrent_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $artisticCurrent = new Artisticcurrent();
        $form = $this->createForm('AppBundle\Form\ArtisticCurrentType', $artisticCurrent);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($artisticCurrent);
            $em->flush();

            return $this->redirectToRoute('artisticcurrent_show', array('id' => $artisticCurrent->getId()));
        }

        return $this->render('artisticcurrent/new.html.twig', array(
            'artisticCurrent' => $artisticCurrent,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a artisticCurrent entity.
     *
     * @Route("/{id}", name="artisticcurrent_show")
     * @Method("GET")
     */
    public function showAction(ArtisticCurrent $artisticCurrent)
    {
        $deleteForm = $this->createDeleteForm($artisticCurrent);

        return $this->render('artisticcurrent/show.html.twig', array(
            'artisticCurrent' => $artisticCurrent,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing artisticCurrent entity.
     *
     * @Route("/{id}/edit", name="artisticcurrent_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, ArtisticCurrent $artisticCurrent)
    {
        $deleteForm = $this->createDeleteForm($artisticCurrent);
        $editForm = $this->createForm('AppBundle\Form\ArtisticCurrentType', $artisticCurrent);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('artisticcurrent_edit', array('id' => $artisticCurrent->getId()));
        }

        return $this->render('artisticcurrent/edit.html.twig', array(
            'artisticCurrent' => $artisticCurrent,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a artisticCurrent entity.
     *
     * @Route("/{id}", name="artisticcurrent_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, ArtisticCurrent $artisticCurrent)
    {
        $form = $this->createDeleteForm($artisticCurrent);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($artisticCurrent);
            $em->flush();
        }

        return $this->redirectToRoute('artisticcurrent_index');
    }

    /**
     * Creates a form to delete a artisticCurrent entity.
     *
     * @param ArtisticCurrent $artisticCurrent The artisticCurrent entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(ArtisticCurrent $artisticCurrent)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('artisticcurrent_delete', array('id' => $artisticCurrent->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
