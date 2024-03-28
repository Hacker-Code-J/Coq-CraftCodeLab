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

Check negb.
Check andb.
Check orb.

Example test_orb1: (orb true false) = true.
Proof. simpl. reflexivity. Qed.

Example test_and1: (andb true false) = false.
Proof. simpl. reflexivity. Qed.

Definition negb' (b:bool) : bool :=
    if b then false else true.
Definition andb' (b1:bool) (b2:bool) : bool :=
    if b1 then b2 else false.
Definition orb' (b1:bool) (b2:bool) : bool :=
    if b1 then true else b2.

Check negb'.
Check andb'.
Check orb'.

Inductive mybool : Type :=
| a_my
| b_my.
Definition negb_my (b:mybool) : mybool :=
    if b then b_my
    else a_my.
Definition andb_my (b1:mybool) (b2:mybool) : mybool :=
    if b1 then b2
    else b_my.
Definition orb_my (b1:mybool) (b2:mybool) : mybool :=
    if b1 then a_my
    else b2.

Check mybool.
Check negb_my.
Check andb_my.
Check orb_my.

(** Infix Notation *)
Notation "x && y" := (andb x y).
Notation "x || y" := (orb x y).
