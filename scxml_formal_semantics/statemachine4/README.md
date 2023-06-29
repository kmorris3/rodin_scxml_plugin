Proof of INV @container_active
==============================

s a non−root state, 
   and either (1) s is active but none−exiting state, OR
              (2) s is an entering state
then
  either 
 (G1) the container of s is active but none−exiting state, OR
 (G2) the container of s is an entering state

Since s is a non−root state, there exists a region r containing s·

Proof−by−case
(1) s is active but none−exiting state
   − We first prove that s is NOT an enabling state by contradiction, i·e·, assuming that s is an enabling state·
     + by instantiating @enabling−unique_exiting_states_in_a_region, we obtain that s is the unique exiting state in r,
     this is in contradiction with (1) that s is a non−exiting state·
   − We proceed by proving (G1) by proving 
       (1−1) the container of s is an active state
       (1−2) the container of s is a non−exiting state
     
    (1−1) This follows from invariant @container_active, stating that if a state is active then its container is active
    (1−2) We prove this by contradiction, i·e·, assuming that the container of s is an exiting state·
      − Instantiating @exiting−contained_region∈ Since container(s) is an exiting state and contains region r, 
        there must be an exiting state in r, let's call this state x·
      − Instantiating exiting−either_one_or_all_in_a_region, since x is an exiting state in r, either 
           (1−2−1) x is the unique exiting state in r, OR
           (1−2−2) all states in r are exiting states
        We proceed by prove−by−case
        (1−2−1) If x is the unique exiting state in r
            − Instantiating @exiting−unique_enabling_states_in_a_region, x is the unique enabling state in r·
 
            − We prove that x is NOT an active state· 
              This is because in each region there can be at most one active state (invariant @active−region−unique)
              In region r, s is the active state (due to (1)) and 
                  must be different from x as s is a non−exiting state and x is an exiting state
            − x is an enabling state and according to the guard of the event, all enabling states must be active hence contradiction
  
        (1−2−2) all states in r are exiting states, it is a contradiction as s is in r but s is a non−exiting states·

(2) s is an entering state
    Consider 2 cases
    (2−1) container of s is also an entering state ⇒ hence we have (G2)
    (2−2) container of s is NOT an entering state
        - instantiating @entering−stay_within_state, since
			   entering(trf) ∩ r ≠ ∅ ∧ <−−− TRUE because s is an entering state
			   entering(trf) ∩ container[r] = ∅ <−−− This is because of (2−2)
   		so the container of s is enabling but NOT exiting state
        - Since all enabling state has to be active the transformation to occur,
           it means that the container of s is active but none−existing state (G1)


Proof of INV @content_active
==============================
 For all s where 
      (H1) s is a container state and
       s is (H2·1) active and NOT exiting state OR
            (H2·2) s is an entering state
  then
      there exists a child state of s which is either
       (G1) active and NOT existing state OR
       (G2) an entering state

Consider proof by cases for (H2·1) and (H2·2)

(H2·1), i·e·, s is active and NOT exiting state
  − Instantiate INV @content_active, we have
    there exist a child state of s which is active, call this child state x
  − Consider proof by case on x is an exiting state OR ¬
    (a) x is an exiting state
        + We first prove that there exists a child state of s which is an entering state
           −− There exists a region r contains x
              ==== TBA ====
           −− r ◁ container=r × {s}, i.e., every state in r must have
          s as its container.
              === TBA ===
           −− Instantiating @entering−you_must_go*somewhere with r, we
           obtain that there must be an entering state within r
        + Let's call this child state x0, which is an entering state·
           x0 is a candidate for (G2)
    (b) x is NOT an exiting state
        x would be a candidate for (G1)
 
(H2·2) i·e·, s is an entering state
   − There exists a region r contained in s, i·e·, ∃ r   · r∈regions ∧r ◁ container=r × {s}
          ==== TBA ====
   − Instantiate AXM @entering−contained*region,
       we obtain that there is an entering state in r, i·e·, entering(trf) ∩ r ≠ ∅
       we call this entering state in r x and 
       we will prove that x is a candidate for either (G1) OR (G2)

Proof of INV @active_region_unique
==============================

r is a region
s is a state in r
s is (active and not-exiting state) (H1) or is an entering state (H2)
then
s is the unique state in r that is active and not-exiting state) or is
an entering state

Rephrase as

r is a region
s is a state in r
s is (active and not-exiting state) (H1) or is an entering state (H2)
x is (active and not-exiting state) (H3) or is an entering state (H4)
then
x = s (G)

We have 4 cases:
(1) s and x are both active and not-exiting states (H1 & H3)
This is trivial according to @active_region_unique: s and x are within
the same region and both are active so they have to be the same (G)

(2) s is active and not-exiting state and x is an entering state (H1 &
H4)
 We prove separate as a theorem @active-no-exit-no-enter of the
 machine to derive a constradiction, stating that if a region has an
 active and not exiting state then that region cannot have an entering
 state.

(3) H2 & H3 <-- symmetry to (2)

(4) s and x are both entering states (H2 & H4)
This is trivial because according to
@entering-at_most_one_in_a_region: s and x are within the same region
and both are entering states so they have to be the same (G)

Proof of INV @active-no-exit-no-enter
----------------------------------
(This is a THEOREM of the machine)

For all s where 
  x is a non-root state, active and non-exiting state, for
any region r containing x (this should be an unique region), r does
not have any entering state. We call this properties G(s)

We proof this using induction on tree.
(1) Base case: G(root) satisfies trivially as root is NOT a non-root
  state.
(2) Inductive case: We need to proof that G(x) holds under the
  assumption that G(container(x)) holds.
  
  Given the 
  x is a non-root state, (H1) 
  x is active (H2) 
  x is a non-exiting state (H3), and
  r is a region (H4)
  r is containing x (H5)
  G(container(x)) -- to be expand later
  
  we have to prove that r does not contain any entering state.
  
- We first prove that there are no exiting states in r (G1). We
  proceed by contradiction, assuming that there is an exiting state x0
  in r. 
  + According to @exiting-either_one_or_all_in_a_region, x0 has to
  be the unique exiting state in r (since x is a non-exiting state in
  r).
  + According to @exiting-unique_enabling_states_in_a_region, x0 has
    to be the unique enabling states in r.
  + Since x0 is an enabling state, x0 has to be an enabling state (guard of the
    @transformation event).
  + Contradiction: We have two distinct active states x and x0 in r
    which contradict invariant @active-region-unique

- Let x0 be the container of x. Note that x0 is also the container of
  region r. We proceed by contradiction, i.e., assuming that there is
  an entering state in r.
  + According to @enter-through-parent-or-within-region, the container
    of r1 (i.e., x0) is an entering state.
  + We can now apply modus ponens with the inductive hypothesis G(container(x)),
    i.e. G(x0), stating that
	      if x0 is a non-root state and
		     x0 is active
			 x0 is not exiting state
		  then for any region r1 containing x0, there are no entering
    state in r.
	The left-hand side of the implication is correct because
	    *) x0 cannot be root since it is an entering state (according
    to @root-not-entering
	    *) x0 is active because x is active and x0 is the container of
    x.
	    *) We prove x0 is not an exiting state by contrdiction, i.e.,
    assuming that x0 is an exiting state.
	        **) According to @exiting-contained_region, r (a region
    contained in x0) must contain an exiting state.
	        **) This contradicts with G1 stating that there are no exiting states in r.
	   
	We can now assume the right-hand side of Gx0), i.e., for any
    region r1 containg x0, there are no entering state in r1. However,
    since x0 is also an entering state, this lead to contradiction.
