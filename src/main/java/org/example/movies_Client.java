package org.example;
import org.jpl7.*;

import java.util.Map;
import java.util.Scanner;

public class movies_Client {
    public static void main(String[] args) {
//        org.jpl7.Query q = new org.jpl7.Query("consult('c:/Users/Admin/IdeaProjects/movies_client/moviesII.pl')");
//
//        q.hasSolution();
//
//        q = new Query("update_movie_language('Love Letter', [kor])");
//        Map<String, Term>[] res = q.allSolutions();

        movies_Client.Driver();
    }

    public static void Driver () {

        org.jpl7.Query q = new org.jpl7.Query("consult('c:/Users/Admin/IdeaProjects/MoviesKB_Client/moviesII.pl')");
        System.out.println("consult " + (q.hasSolution() ? "has completed" : "has failed"));

        Scanner scn = new Scanner(System.in);
        String userInput;
        boolean WhenExit = true;
        do {
            System.out.println("+++++++++++++++++++Operation menu++++++++++++++++++++++ ");
            System.out.println("1. Add add_movie_cast.                                  ");
            System.out.println("2. update_movie_language.                               ");
            System.out.println("3. update_movie_cast.                                   ");
            System.out.println("4. Exit the program                                     ");
            System.out.println("5. Check adding result.                                 ");
            System.out.println("6. Check updating result.                               ");
            System.out.println("Enter the number for you operation: ");

            userInput = scn.nextLine();

            switch (userInput) {

                case "1":
                    QueryOperation.add_movie_cast();
                    printcast();
                    break;
                case "2":
                    QueryOperation.update_movie_language();
                    break;
                case "3":
                    QueryOperation.update_movie_cast();
                    printActor();
                    break;
                case "4":
                    System.out.println("Program Exit.");
                    WhenExit = false;
                    break;
                case "5":
                    q.hasSolution();
                    q = new Query("movie_cast(X,Y,Z)");
                    Map<String, Term>[] res3 = q.allSolutions();
                    for (int i = 0; i < res3.length; i++) {
                        System.out.println(res3[i].get("X") + " " + res3[i].get("Y")+ " " + res3[i].get("Z"));
                    }
                case "6":
                    q.hasSolution();
                    q = new Query("movie_details(U,V,W,X,Y,Z)");
                    Map<String, Term>[] res4 = q.allSolutions();
                    for (int i = 0; i < res4.length; i++) {
                        System.out.println(res4[i].get("U") + " " + res4[i].get("Y"));
                    }
                default:
                    System.out.println(" invalid input number ");
            }
        } while (WhenExit);
    }

    public static void printcast () {
        Variable movies_name = new Variable("name");
        Variable movies_Actor= new Variable("Actor");
        Variable movies_Role= new Variable("Role");
        org.jpl7.Query qry = new org.jpl7.Query("add_movie_cast", new Term[]{movies_name, movies_Actor, movies_Role});

        Map<String, Term>[] res = qry.allSolutions();
        for(int i=0; i<res.length; i++){
            System.out.println("New Movie Cast for "+res[i].get("name")+ " Actor: " + res[i].get("Actor") +" Role: " + res[i].get("Role") +" has been added. ");
            System.out.println();
        }
    }

    public static void printLanguage () {
        Variable movies_Title = new Variable("Title");
        Variable movies_language = new Variable("Language");
        org.jpl7.Query qry2 = new org.jpl7.Query("update_movie_language", new Term[]{movies_Title, movies_language});

        Map<String, Term>[] res2 = qry2.allSolutions();
        for (int i = 0; i < res2.length; i++) {
            System.out.println(res2[i].get("Title") + " update to " + res2[i].get("Language"));
        }
    }

        public static void printActor() {
            Variable movies_OldActor = new Variable("OldActor");
            Variable movies_NewActor = new Variable("NewActor");
            org.jpl7.Query qry3 = new org.jpl7.Query("update_movie_cast", new Term[]{movies_OldActor, movies_NewActor});
            Map<String, Term>[] res3 = qry3.allSolutions();
        }
}