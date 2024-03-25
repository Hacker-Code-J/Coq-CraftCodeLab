Inductive nat : Type :=
| O
| S (n : nat). (* _ instead of n is ok *)

Check nat.
Compute nat.
Print nat.