<?php

namespace AppBundle\Controller;

use AppBundle\Entity\ArtWork;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;use Symfony\Component\HttpFoundation\Request;

/**
 * Workofart controller.
 *
 * @Route("workofart")
 */
class WorkOfArtController extends Controller
{
    /**
     * Lists all workOfArt entities.
     *
     * @Route("/", name="workofart_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $workOfArts = $em->getRepository('AppBundle:ArtWork')->findAll();

        return $this->render('workofart/index.html.twig', array(
            'workOfArts' => $workOfArts,
        ));
    }

    /**
     * Creates a new workOfArt entity.
     *
     * @Route("/new", name="workofart_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $workOfArt = new ArtWork();
        $form = $this->createForm('AppBundle\Form\WorkOfArtType', $workOfArt);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($workOfArt);
            $em->flush();

            return $this->redirectToRoute('workofart_show', array('id' => $workOfArt->getId()));
        }

        return $this->render('workofart/new.html.twig', array(
            'workOfArt' => $workOfArt,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a workOfArt entity.
     *
     * @Route("/{id}", name="workofart_show")
     * @Method("GET")
     */
    public function showAction(ArtWork $workOfArt)
    {
        $deleteForm = $this->createDeleteForm($workOfArt);

        return $this->render('workofart/show.html.twig', array(
            'workOfArt' => $workOfArt,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing workOfArt entity.
     *
     * @Route("/{id}/edit", name="workofart_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, ArtWork $workOfArt)
    {
        $deleteForm = $this->createDeleteForm($workOfArt);
        $editForm = $this->createForm('AppBundle\Form\WorkOfArtType', $workOfArt);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('workofart_edit', array('id' => $workOfArt->getId()));
        }

        return $this->render('workofart/edit.html.twig', array(
            'workOfArt' => $workOfArt,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a workOfArt entity.
     *
     * @Route("/{id}", name="workofart_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, ArtWork $workOfArt)
    {
        $form = $this->createDeleteForm($workOfArt);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($workOfArt);
            $em->flush();
        }

        return $this->redirectToRoute('workofart_index');
    }

    /**
     * Creates a form to delete a workOfArt entity.
     *
     * @param ArtWork $workOfArt The workOfArt entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(ArtWork $workOfArt)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('workofart_delete', array('id' => $workOfArt->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
