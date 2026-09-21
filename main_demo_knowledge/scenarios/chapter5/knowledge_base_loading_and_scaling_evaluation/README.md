# Chapter 5, Knowledge Base Loading and Scaling

Additional-knowledge YAMLs layered on top of the base Main Demo ontology, producing the Medium, Large, and Extra Large scenario variants compared against the Base scenario in Chapter 5 of the thesis, to measure how Knowledge Manager startup time scales with ontology size.

- `main_demo_medium_expanded_ontology.yaml`: adds a `counter` Location with two Surfaces and six manipulable objects (reusing the existing Glass/Knife/Can classes), producing the Medium variant.
- `main_demo_large_expanded_ontology.yaml`: loaded after the medium file, adds a `pantry` Location with two more Surfaces and nine more objects, producing the Large variant.
- `main_demo_extra_large_ontology.yaml`: loaded after the large file, adds a `storage_room` Location with two more Surfaces and 50 more objects, producing the Extra Large variant.
