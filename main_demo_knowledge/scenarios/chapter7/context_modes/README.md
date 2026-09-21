# Chapter 7, Context Mode Query-Reduction Scaling

Scenarios comparing per-Flavor Triggers ("own-Trigger") against shared Context-Mode gating ("cm-gated"), across 3 groups of 2 Flavors each, one group per Context Mode activation mechanism (SPARQL, ontology-state/SWRL, and Expected-PDDL-State).

- `ch07_extra_pick_behaviors.yaml`: extra Behaviors added to the Pick Base Template, shared dependency with the baseline folder.
- `ch07_cm_grouping_three_modes.yaml`: defines the 3 Context Modes used across the whole experiment (dangerous object, low battery, operator supervised).
- `ch07_cm_grouping_own_trigger_n6.yaml`: all 6 Flavors (3 groups of 2) with their own individual Triggers.
- `ch07_cm_grouping_cm_gated_n6.yaml`: the same 6 Flavors, gated by their group's Context Mode instead of individual Triggers.
- `ch07_groupa_own_trigger.yaml` / `ch07_groupa_cm_gated.yaml` / `ch07_groupa_cm_only.yaml`: Group A (dangerous object, SPARQL) in isolation, own-Trigger arm, cm-gated arm, and its Context Mode alone.
- `ch07_groupb_own_trigger.yaml` / `ch07_groupb_cm_gated.yaml` / `ch07_groupb_cm_only.yaml`: the same for Group B (low battery, ontology-state/SWRL).
- `ch07_groupc_own_trigger.yaml` / `ch07_groupc_cm_gated.yaml` / `ch07_groupc_cm_only.yaml`: the same for Group C (operator present, Expected-PDDL-State).
