package org.example;
import org.jpl7.Atom;
import org.jpl7.Term;
import java.util.Scanner;

public class QueryOperation {

    public static void add_movie_cast(){

        Scanner sc = new Scanner(System.in);
        System.out.println("Please input the movies_name:");
        String movies_name = sc.nextLine();
        System.out.println("Please input the movies_Actor:");
        String movies_Actor = sc.nextLine();
        System.out.println("Please input the movies_Role:");
        String movies_Role = sc.nextLine();


        org.jpl7.Atom name = new org.jpl7.Atom(movies_name);
        org.jpl7.Atom Actor = new org.jpl7.Atom(movies_Actor);
        org.jpl7.Atom Role = new org.jpl7.Atom(movies_Role);
        org.jpl7.Query q1 = new org.jpl7.Query("add_movie_cast", new Term[] {name, Actor, Role});
        System.out.println("add_movie_cast " + (q1.hasSolution()? "has completed" : "has failed"));

    }

    public static void update_movie_language(){

        Scanner sc = new Scanner(System.in);
        System.out.println("Please input the Title:");
        String Title = sc.nextLine();
        System.out.println("Please input the new language:");
        String new_language = sc.nextLine();

        org.jpl7.Atom movie_Title = new org.jpl7.Atom(Title);
        org.jpl7.Atom Update_language = new org.jpl7.Atom(new_language);
        org.jpl7.Query q2 = new org.jpl7.Query("update_movie_language", new Term[] {movie_Title, Update_language});
        System.out.println("update_movie_language " + (q2.hasSolution()? "has completed" : "has failed"));
        if (q2.hasSolution() == true)
            System.out.println("update movie " + Title+ " to "+ "new language "+ new_language);
        else
            System.out.println("nothing change");


        System.out.println();
    }
    public static void update_movie_cast(){

        Scanner sc = new Scanner(System.in);
        System.out.println("Please input the old Actor:");
        String OldActor = sc.nextLine();
        System.out.println("Please input the new Actor:");
        String NewActor = sc.nextLine();

        org.jpl7.Atom movie_OldActor = new org.jpl7.Atom(OldActor);
        org.jpl7.Atom movie_NewActor = new org.jpl7.Atom(NewActor);
        org.jpl7.Query q3 = new org.jpl7.Query("update_movie_cast", new Term[] {movie_OldActor, movie_NewActor});
        System.out.println("update_movie_cast " + (q3.hasSolution()? "has completed" : "has failed"));
        if (q3.hasSolution() == true)
            System.out.println("The Actor: "+ OldActor + " has updated to " + NewActor );
        else
            System.out.println("nothing change");
    }


}