# Chapter 8, Smart Monitoring and Recovery

Scenarios for the Smart Monitoring and Recovery (MRS) qualitative evaluation of Chapter 8, comparing two contrasting MRS-Flavor configurations of the same Pick Behavior.

- `ch08_pick_scenarios_mrs_flavors.yaml`: defines Scenario A (`madar`, SuctionGripper + ProximitySensor, picking `glass1`, a FragileObject/LiquidContainer) and Scenario B (`tiago`, ParallelGripper + RGBDCamera + ForceTorqueSensor, picking `knife1`, a DangerousObject), each with its own regular Flavors and MRS Flavors selected by ontological reasoning, plus one MRS Flavor (battery precondition) shared by both. Both scenarios are loaded at once, the resulting BT differs based on the task plan and the values in the seed.
- `ch08_context_modes.yaml`: Context Mode definitions reused from Chapter 7, of which only the suction-gripper and force-sensor modes are used here.
- `ch08_base_template_extra_pick_behaviors.yaml`: extra Behaviors added to the Pick Base Template, reused from Chapter 7's baseline scenarios.
