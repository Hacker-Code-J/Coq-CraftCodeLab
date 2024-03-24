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
Print a. (** Name = Value : Type *)

(* Check a: day.

Compute a: day.

Print a: day. error *)

Definition next_weekday (d:day) : day :=
  match d with
  | monday    => tuesday
  | tuesday   => wednesday
  | wednesday => thursday
  | thursday  => friday
  | friday    => monday
  | saturday  => monday
  | sunday    => monday
  end.

(* Check next_weekday.
Print next_weekday.

Compute (next_weekday friday).
Eval compute in (next_weekday friday).

Compute (next_weekday (next_weekday saturday)). *)

Check 0 = 0.
Check 0 = 1.
Check forall n: nat, n = n.

(* Check n = n. *)

Check Prop.

Theorem my0 : 0 = 0.
Proof.
  reflexivity.
  Show Proof.
Qed.

Definition my1 : 0 = 0 := eq_refl.
Check my1.
Print my1.

Check @eq_refl. (* : forall (A : Type) (x : A), x = x *)  
Print eq_refl.
