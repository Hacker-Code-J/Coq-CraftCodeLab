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

(* Define a Function *)
 (* Definition next_weekday (d:day) : day :=
 match d with
 | monday       => tuesday
 | tuesday      => wednesday
 | wednesday    => thursday
 | thursday     => friday
 | friday       => monday
 | saturday     => monday
 | sunday       => monday
end. *)

Check day.
Check Set.
Check Type.

(* Compute (next_weekday friday).
Compute (next_weekday (next_weekday saturday)).

Example test_next_weekday:
    (next_weekday (next_weekday saturday)) = tuesday.
Proof. simpl. reflexivity. Qed. *)

 (* Name-Type-Value Triple *)
(* Definition a: day := monday.

Check day.
Check a.
Check day : Type. *)
