Inductive nat : Type :=
| O
| S (n : nat). (* _ instead of n is ok *)

Check nat.
Print nat.

Definition pred (n : nat) : nat :=
match n with
| O => O
| S n' => n'
end.

Check pred.
Print pred.

Fixpoint even (n:nat) : bool :=
 match n with
 | O => true
 | S O => false
 | S (S n') => even n'
 end.

Fixpoint odd (n:nat) : bool :=
 match n with
 | O => false
 | S O => true
 | S (S n') => odd n'
 end.

Check even.
Print even.

Check odd.
Print odd.

Fixpoint plus (n: nat) (m: nat): nat :=
match n with
| O => m
| S n' => S (plus n' m)
end.

Fixpoint minus (n m: nat): nat :=
match n, m with
| O , _ => O
| S _ , O => n
| S n', S m' => minus n' m'
end.

Check plus. (* Currying *)