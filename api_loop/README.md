API Loop Assets

- `refine_sysml.py`: single-prompt compile-in-the-loop generator.
- `run_refine_sysml_designbench.py`: batch runner over SysMBench prompts.
- `nl_prompts/`: local NL prompt set used by the API loop.
- `Generated_from_Prompts_API_LOOP/`: generated outputs, manifests, and archived refine runs.
- `runs/`: raw run-artifact root for API-loop executions.

External dependency path expected by defaults:

- `../sysmbench_original_upstream/dataset/sysml/samples/` (ground-truth sources)

This folder groups the API compiler-in-the-loop workflow assets.
