(** Basics: Functional Programming in Coq *)
(** Data and Functions *)

(* Define a Finite-Set as Enumerate *)
Inductive day : Type :=
 | monday
 | tuesday
 | wednesday
 | thursday
 | friday
 | saturday
 | sunday.

(* Name-Type-Value Triple *)
Definition a: day := monday.

Check day.
Check a.
Check day : Type.

(* Define a Function *)
 Definition next_weekday (d:day) : day :=
 match d with
 | monday => tuesday
 | tuesday => wednesday
 | wednesday => thursday
 | thursday => friday
 | friday => monday