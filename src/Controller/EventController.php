<?php

namespace App\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Component\HttpFoundation\Request;
use App\Entity\Event;
use App\Form\AddEventType;

class EventController extends AbstractController
{
    #[Route('/', name: 'app_event')]
    public function index(ManagerRegistry $doctrine): Response
    {

        $events = $doctrine->getManager()->getRepository(Event::class)->findAll();

        return $this->render('event/index.html.twig', [
            'events' => $events
        ]);
    }

    #[Route('/details/{id}', name: 'details_event')]
    public function detailsEvent($id, ManagerRegistry $doctrine): Response
    {
        $event = $doctrine->getManager()->getRepository(Event::class)->find($id);
        return $this->render('event/details.html.twig', [
            'event' => $event
        ]);
    }

    #[Route('/create', name: 'create_event')]
    public function createEvent(Request $request, ManagerRegistry $doctrine): Response
    {
        $event = new Event();
        // dd($event);
        $form = $this->createForm(AddEventType::class, $event);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $event = $form->getData();
            $em = $doctrine->getManager();
            $em->persist($event);
            $em->flush();

            $this->addFlash(
                'notice',
                'Event Added'
            );
            return $this->redirectToRoute('app_event');
        }
        return $this->render('event/create.html.twig', [
            "form" => $form->createView()
        ]);
    }

    #[Route('/edit/{id}', name: 'edit_event')]
    public function editEvent($id, Request $request, ManagerRegistry $doctrine): Response
    {
        $event = $doctrine->getManager()->getRepository(Event::class)->find($id);
        // dd($event);
        $form = $this->createForm(AddEventType::class, $event);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $event = $form->getData();
            $em = $doctrine->getManager();
            $em->persist($event);
            $em->flush();

            $this->addFlash(
                'notice',
                'Event Updated'
            );
            return $this->redirectToRoute('app_event');
        }
        return $this->render('event/edit.html.twig', [
            "form" => $form->createView()
        ]);
    }
    #[Route('/delete/{id}', name: 'delete_event')]
    public function deleteEvent($id, ManagerRegistry $doctrine): Response
    {
        $event = $doctrine->getManager()->getRepository(Event::class)->find($id);
        $em = $doctrine->getManager();
        $em->remove($event);

        $em->flush();
        $this->addFlash('notice', 'Event deleted');
        return $this->redirectToRoute('app_event');
    }
}
