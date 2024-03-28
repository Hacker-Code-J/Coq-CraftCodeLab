Inductive day : Type :=
 | monday
 | tuesday
 | wednesday
 | thursday
 | friday
 | saturday
 | sunday.

Check Set : Type.
Check Prop : Type.
Check Type : Type.

Check 1=1.
Check 1=1 : Prop.
Check 1=1 : Set.
Check 1=1 : Type.

Check day : Set.
Check day : Type.
Fail Check day : Prop.

Module MyPlayground0.

Definition a: day := monday.
Check a.


Definition n: nat := 3.
Check n.
Check n = n.
Compute n = n.
Compute n + 1 = n * 0.
Variable m : nat.
Check m = n.

End MyPlayground0.

Fail Check n.
Compute MyPlayground0.n.
