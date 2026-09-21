# Chapter 7, Context Mode Query-Reduction Scaling, Outputs

Generated Behavior Trees for the Context Mode query-reduction scaling evaluation (see `scenarios/chapter7/context_modes/`).

- `own_trigger_n6_bt.xml` / `cm_gated_n6_bt.xml`: Pick BT with all 6 Flavors (3 groups) applied, using individual Triggers vs. shared Context-Mode gating respectively.
- `group_a_own_trigger_bt.xml` / `group_a_cm_gated_bt.xml`: Group A alone (dangerous object, SPARQL), own-Trigger vs. cm-gated.
- `group_b_own_trigger_bt.xml` / `group_b_cm_gated_bt.xml`: Group B alone (low battery, ontology-state/SWRL), own-Trigger vs. cm-gated.
- `group_c_own_trigger_bt.xml` / `group_c_cm_gated_bt.xml`: Group C alone (operator present, Expected-PDDL-State), own-Trigger vs. cm-gated.
