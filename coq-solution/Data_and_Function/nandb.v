(*** ================ Preamble ================ ***)
Inductive bool : Type :=
  | true
  | false.

Definition negb (b:bool) : bool :=
  match b with
  | true => false
  | false => true
  end.

Definition andb (b1:bool) (b2:bool) : bool :=
  match b1 with
  | true => b2
  | false => false
  end.

Definition orb (b1:bool) (b2:bool) : bool :=
  match b1 with
  | true => true
  | false => b2
  end.

(*** ================ Solution ================ ***)

(** !(b1 & b2) *)
(** !(T & T) -> !T -> F *)
(** !(T & F) -> !F -> T *)
(** !(F & T) -> !F -> T *)
(** !(F & F) -> !F -> T *)

Definition nandb (b1:bool) (b2:bool) : bool :=
  match b1 with
  | true => negb b2
  | false => true
  end.

Example test_nandb1:               (nandb true false) = true.
(* FILL IN HERE *) Proof. reflexivity. Qed.
Example test_nandb2:               (nandb false false) = true.
(* FILL IN HERE *) Proof. reflexivity. Qed.
Example test_nandb3:               (nandb false true) = true.
(* FILL IN HERE *) Proof. reflexivity. Qed.
Example test_nandb4:               (nandb true true) = false.
(* FILL IN HERE *) Proof. reflexivity. Qed.