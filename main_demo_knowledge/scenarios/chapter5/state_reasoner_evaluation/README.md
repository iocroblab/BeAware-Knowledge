# Chapter 5, State Reasoner Evaluation

Additional knowledge used to compare two mechanisms for deriving the `objectOnSurface` relation between manipulated objects and Surfaces from raw position data: a geometric SWRL rule evaluated by the reasoner, and a dedicated State Reasoner node.

- `main_demo_object_positions.yaml`: adds `hasPositionX/Y/Z` coordinates to `glass1`, `knife1`, and `can1`, without asserting `objectOnSurface` directly, and declares the geometric SWRL rule that re-derives `objectOnSurface` from these coordinates against each Surface's bounding box (`hasBBoxMinX/MaxX/MinY/MaxY/MinZ/MaxZ`, already declared on the base Main Demo ontology). The rule uses `associated_properties_to_clear` so that `objectOnSurface` is cleared for every individual before each reasoning pass, preventing outdated inferences from accumulating across passes, since SWRL inference is monotonic.
