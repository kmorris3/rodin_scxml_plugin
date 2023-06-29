//@enabling-container: If a state is enabling state then its container is enabling state

@enabling-unique_region: Enabling state is unique in a region // Enabling state or the ancester of an enabling state is unique in a region

@exiting-either_one_or_all_in_a_region: Exiting one or all state in a region

@exiting-contained_region: if a state S is an exiting state then there must be some exiting states in each of the S's sub-region.

@enabling-unique_exiting_states_in_a_region: If S is an enabling state in a region r then it is also the unique exiting state in r.

// a region has to have at least 2 states ??? then this can be the equipvalent between enabling and exiting uniqueness in a region.
@exiting-unique_enabling_states_in_a_region: If s is a unique exiting state in a region r and r has more than 1 state then s is the unique enabling state in r.

@entering-at_most_one_in_a_region: There is at most one entering state in a region

@entering-contained_region: If a transformation entering a parent state of a region r then it must enter some state in r.

@entering-stay_within_state: If a transformation enters a region r but not the parent state of r then the parent state is not an exiting state.

@entering-you_must_go_somewhere: If a transformation exits a region r but not the parent state of r then the transformation must re-enter region r.
