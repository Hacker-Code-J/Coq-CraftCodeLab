Inductive day : Type :=
 | monday
 | tuesday
 | wednesday
 | thursday
 | friday
 | saturday
 | sunday.

Definition a: day := monday.
Definition b: day := friday.

Check a. (** Name : Type *)
Compute a. (** = Value : Type *)
Print a. (** Name = Value : Type*)

(* Check a: day.

Compute a: day.

Print a: day. error *)

