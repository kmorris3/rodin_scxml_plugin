(*
  Syntactical element of SCXML 
  - Statemachine
    + Tree
    + Region
    + Transitions

  - Triggers

  Structure monoid := { 
   dom : Type ; 
   op : dom -> dom -> dom where "x * y" := (op x y); 
   id : dom where "1" := id; 
   assoc : ∀ x y z, x * (y * z) = (x * y) * z ; 
   left_neutral : ∀ x, 1 * x = x ;
   right_neutral : ∀ x, x * 1 = x 
 }.

  Inductive Tree : Type :=
  | Node : nat -> list Tree -> Tree.
  
  // Co-inductive
  Inductive Tree : Type :=
  | Node : nat -> list Region -> Tree

  Inductive Region : Type :=
  | list Tree -> Region

*)
(*
Theorem add_0_r_secondtry : forall n:nat,
  n + 0 = n.
Proof.
  intros n. destruct n as [| n'] eqn:E.
  - (* n = 0 *)
    reflexivity. (* so far so good... *)
  - (* n = S n' *)
    simpl. (* ...but here we are stuck again *)
Abort.

Theorem add_0_r_secondtry : forall n:nat,
  n + 0 = n.
Proof.
  intros n. 
  induction n as [| n'].
  - (* n = 0 *)
    reflexivity.
  - (* n = S n' *)
    simpl.
    rewrite IHn'.
    reflexivity.
Qed.
*)

(*Definition Region : Type := list Tree.*)

(*Inductive Tree : Type :=
  | Node : nat -> list Tree -> Tree.

Check Tree_ind.

Record Statemachine : Type :=
  {
    tree : Tree;
    region : nat -> list Tree
  }.
 *)
(*                   N1
    {N2       N3}     {N8                N9}
  {L4 L5}   {L6  L7}  {L10}  {L11}        {L12}
*)

Section Tree.
Context (A B : Set).

Inductive tree : Set := node : A -> forest -> tree
with forest : Set :=
| empty : forest
| f_cons : region -> forest -> forest
  with region : Set :=
     | single : tree -> region
     | r_cons : tree -> region -> region.

Check tree_ind.

Set Printing Universes.

Scheme tree_forest_rec := Induction for tree Sort Prop
  with forest_region_rec := Induction for forest Sort Prop
  with region_forest_rec := Induction for region Sort Prop.

Check tree_forest_rec.
Check forest_region_rec.
Check region_forest_rec.

End Tree.

Check tree.

Goal forall (A B : Set) (P : tree A B -> Set) (P0 : forest A B -> Set) (t : tree A B), P t.
  intros.
  apply (forest_tree_rec A B P P0).


(*Inductive List : Set :=
  | empty : List
  | cons: A -> List -> List.

Check List_ind.*)
(*
Inductive tree(A : Type) : Type := node : A -> list_region(A) -> tree(A)
with list_region(A : Type) : Type :=
  | nil : list_region(A)
  | cons : region(A) -> list_region(A) -> list_region(A)
    with region(A : Type) : Type :=
       | empty : region(A)
       | cons_region : tree(A) -> region(A) -> region(A)
  .

(*Definition forest1 : forest(nat) := (leaf 0).*)
Check region_ind.

Check list_region_ind.

Check tree_ind.
*)
