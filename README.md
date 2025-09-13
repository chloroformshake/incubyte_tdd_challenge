# TDD (Test-Driven Dev)

```
⚖️ The Three Laws

You are not allowed to write any production code unless it is to make a failing test pass.
→ no "just in case" code — tests drive the need.

You are not allowed to write any more of a unit test than is sufficient to fail.
→ write the smallest possible failing test (it shouldn’t even compile if the feature doesn’t exist).

You are not allowed to write any more production code than is sufficient to pass the currently failing test.
→ no over-engineering, only the code needed to satisfy the test.
```

```
🔄 Cycle in Practice

Red: write a failing test (law #2).

Green: write minimal code to pass it (laws #1 + #3).

Refactor: improve code while keeping tests green.
````
