Inductive rgb : Type :=
| red
| green
| blue.

Inductive color : Type :=
| black
| white
| primary (p : rgb).

Check color.
Compute color.
Print color.

Definition monochrome (c:color) : bool :=
 match c with
 | black => true
 | white => true
 | primary _=> false
 end.

 Check monochrome.
 Print monochrome.

(* Module Playground.
    Definition foo: rgb := red.
End Playground. *)