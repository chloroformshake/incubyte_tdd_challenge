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

## First failed test case report for non-existing string calculator

<img width="1512" height="982" alt="Screenshot 2025-09-13 at 2 54 11 PM" src="https://github.com/user-attachments/assets/18ad30b2-3d88-4f4d-96b1-c45de54be892" />

## Second failed test case report for returning when only single number

<img width="1512" height="982" alt="Screenshot 2025-09-13 at 3 24 43 PM" src="https://github.com/user-attachments/assets/19d50754-efc1-4451-892d-5be3d124fc31" />

## Third failed test case report for sum of two comma separated numbers

<img width="1512" height="982" alt="Screenshot 2025-09-13 at 3 35 19 PM" src="https://github.com/user-attachments/assets/f4abc926-60a7-4f0a-83f2-a6e02a1c205e" />




