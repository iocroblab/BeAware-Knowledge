# Chapter 7, Baseline Flavor-Configuration Timing

Scenarios for the Baseline Execution Configuration Timing Analysis of Chapter 7, isolating each of the 9 showcase Flavors individually and then in the three cumulative groups (Flavors 1-3, 1-6, 1-9), comparing a Trigger-false Seed against a Trigger-true Seed for each. Every Flavor-carrying file needs `ch07_extra_pick_behaviors.yaml` loaded alongside it, for additional behaviors and primitives not in the original template.

- `ch07_flavor1_dangerous_pick.yaml`: Flavor 1 (ModulateParameter), reduces Pick's arm velocity for dangerous objects.
- `ch07_flavor2_kinematic_restriction_fragile.yaml`: Flavor 2 (AddKinematicRestriction), keeps liquid containers upright while lifting.
- `ch07_flavor3_replace_verify_grasp_operator.yaml`: Flavor 3 (ReplaceAbyB), swaps grasp verification for an operator confirmation when a human operator is present; bundles the `operatorPresent` override, used for the Trigger-true Seed.
- `ch07_flavor3_only_no_override.yaml`: Flavor 3 alone, without the `operatorPresent` override, used for the Trigger-false Seed.
- `ch07_flavor4_replace_grasp_heavy.yaml`: Flavor 4 (ReplaceAbyB), swaps the grasp for a reinforced two-stage grasp on heavy objects.
- `ch07_flavor5_replace_by_param_material.yaml`: Flavor 5 (ReplaceByParam), resolves a grasp-style parameter from the object's material via a SPARQL query.
- `ch07_flavor6_delay_verify_grasp_safe.yaml`: Flavor 6 (DelayAUntilAfterB), delays grasp verification until after lifting for suction-gripper robots.
- `ch07_flavor7_replace_release_suction.yaml`: Flavor 7 (ReplaceAbyB), swaps gripper opening for suction deactivation on suction-gripper robots.
- `ch07_flavor8_ignore_localize_small_object.yaml`: Flavor 8 (Ignore), skips lightweight localization in favor of a full scan for small objects.
- `ch07_flavor9_add_pause_before_release_fragile.yaml`: Flavor 9 (AddBtoA), adds a brief pause before releasing fragile objects.
- `ch07_showcase_nine_flavors.yaml`: all 9 Flavors above combined, used for the Group 3 (Flavors 1-9) rows.
- `ch07_madar_at_table.yaml`: relocates `madar` to `table`/`table_top`, needed whenever a Trigger-true Seed uses `madar` (SuctionGripper) as the acting robot, e.g. for Flavors 6 and 7.
- `ch07_neutral_object.yaml`: adds `book1`, a plain manipulation object that is Trigger-false for all 9 Flavors at once, used as the common Trigger-false object across the isolated Flavor tests and the group Seeds.
