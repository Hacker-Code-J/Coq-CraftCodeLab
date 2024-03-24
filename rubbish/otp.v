(* (* Begin by defining the Bit type and basic operations *)
Inductive Bit : Type :=
  | O : Bit
  | I : Bit.

Definition Bit_xor (a b : Bit) : Bit :=
  match a, b with
  | O, O => O
  | O, I => I
  | I, O => I
  | I, I => O
  end.

(* Messages and keys are lists of Bits *)
Definition Message := list Bit.
Definition Key := list Bit.
Definition Ciphertext := list Bit.

(* Function to XOR two Bit lists (message and key) *)
(* This function assumes both lists are of equal length *)
(* Fixpoint xor_bit_lists (msg key : list Bit) : list Bit :=
  match msg, key with
  | [], [] => []
  | m::ms, k::ks => Bit_xor m k :: xor_bit_lists ms ks
  | _, _ => []  (* This case handles unequal lists, but in practice, 
                  we should ensure message and key are of equal length *)
  end. *)

(* Encryption and Decryption functions: they are the same for OTP *)
(* Definition encrypt (msg : Message) (key : Key) : Ciphertext :=
  xor_bit_lists msg key. *)

(* Definition decrypt (cph : Ciphertext) (key : Key) : Message :=
  xor_bit_lists cph key. *)

(* Example usage *)
Definition example_message := [O, I, I, O, I].  (* Binary for '10101' *)
Definition example_key := [I, I, O, I, O].     (* Binary for '11010' *)

Compute encrypt example_message example_key.
Compute decrypt (encrypt example_message example_key) example_key. *)