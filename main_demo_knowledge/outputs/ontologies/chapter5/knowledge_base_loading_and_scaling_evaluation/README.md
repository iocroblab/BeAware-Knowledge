# Chapter 5, Knowledge Base Loading and Scaling, Ontology Outputs

Reasoned and pre-reasoning ontology snapshots for the four ontology sizes used in the Knowledge Manager startup/scaling timing evaluation (see `scenarios/chapter5/knowledge_base_loading_and_scaling_evaluation/`).

- `ontology_before_reasoning_base_ontology.owl` / `ontology_after_reasoning_base_ontology.owl`: the base Main Demo ontology, before and after reasoning.
- `ontology_before_reasoning_medium_expanded_ontology.owl` / `ontology_after_reasoning_medium_expanded_ontology.owl`: the "medium" size variant (`main_demo_medium_expanded_ontology.yaml` applied).
- `ontology_before_reasoning_large_expanded_ontology.owl` / `ontology_after_reasoning_large_expanded_ontology.owl`: the "large" size variant (`main_demo_large_expanded_ontology.yaml` applied).
- `ontology_before_reasoning_extra_large_ontology.owl` / `ontology_after_reasoning_extra_large_ontology.owl`: the "extra large" size variant (`main_demo_extra_large_ontology.yaml` applied on top of the medium and large overlays).

## Chapter 5 ontology-size snapshots (Table 5.1)

Counts below were obtained manually in Protégé (Ontology Metrics panel) for
each of the 8 `.owl` snapshot files in this folder.
### Base

| | Before reasoning | After reasoning |
|---|---|---|
| Axiom | 1196 | 1378 |
| Logical axiom count | 671 | 853 |
| Declaration axioms count | 299 | 299 |
| Class count | 88 | 89 |
| Object property count | 45 | 45 |
| Data property count | 53 | 53 |
| Individual count | 113 | 113 |
| Annotation Property count | 2 | 2 |

### Medium

| | Before reasoning | After reasoning |
|---|---|---|
| Axiom | 1235 | 1457 |
| Logical axiom count | 702 | 924 |
| Declaration axioms count | 307 | 307 |
| Class count | 88 | 89 |
| Object property count | 45 | 45 |
| Data property count | 53 | 53 |
| Individual count | 121 | 121 |
| Annotation Property count | 2 | 2 |

### Large

| | Before reasoning | After reasoning |
|---|---|---|
| Axiom | 1298 | 1542 |
| Logical axiom count | 753 | 997 |
| Declaration axioms count | 319 | 319 |
| Class count | 88 | 89 |
| Object property count | 45 | 45 |
| Data property count | 53 | 53 |
| Individual count | 133 | 133 |
| Annotation Property count | 2 | 2 |

### Extra Large

| | Before reasoning | After reasoning |
|---|---|---|
| Axiom | 1607 | 1955 |
| Logical axiom count | 1009 | 1357 |
| Declaration axioms count | 372 | 372 |
| Class count | 88 | 89 |
| Object property count | 45 | 45 |
| Data property count | 53 | 53 |
| Individual count | 186 | 186 |
| Annotation Property count | 2 | 2 |
