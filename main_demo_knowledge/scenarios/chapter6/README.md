# Chapter 6, (Re)Planning Design

Additional knowledge used for the PDDL Problem Generation showcase in Chapter 6 of the thesis, producing an Extended scenario compared alongside the plain Baseline scenario.

- `ch06_pddl_gen_extended_scenario.yaml`: repositions the base manipulation objects onto different Surfaces so `objectOnSurface` is re-derived by a geometric SWRL rule instead of being directly asserted, adds two new manipulation objects (`glass_new`, `can_new`) on a new `counter_left` Surface, and overrides `operatorPresent` to true on the shared `world_state` individual, producing the "extended" scenario used alongside the plain baseline.
