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

## First SS of failed test case for non-existing string calculator

<img width="1512" height="982" alt="Screenshot 2025-09-13 at 2 54 11 PM" src="https://github.com/user-attachments/assets/18ad30b2-3d88-4f4d-96b1-c45de54be892" />

## Second SS failed test case for returning when only single number

<img width="1512" height="982" alt="Screenshot 2025-09-13 at 3 24 43 PM" src="https://github.com/user-attachments/assets/19d50754-efc1-4451-892d-5be3d124fc31" />

## Third SS failed test case for sum of two comma separated numbers

<img width="1512" height="982" alt="Screenshot 2025-09-13 at 3 35 19 PM" src="https://github.com/user-attachments/assets/f4abc926-60a7-4f0a-83f2-a6e02a1c205e" />

## Fouth SS failed test case for newlines with commas in string input

<img width="1098" height="706" alt="Screenshot 2025-09-13 at 3 59 49 PM" src="https://github.com/user-attachments/assets/7239b2fd-7e2e-43ad-806c-ecd865ae5faf" />

## Fifth SS failed test case for custom single char delimiter

<img width="1055" height="682" alt="Screenshot 2025-09-13 at 4 24 31 PM" src="https://github.com/user-attachments/assets/20a5eb1e-39c0-48da-ab45-23f5d25008a5" />

## Sixth & Seventh SS failed test case for throwing exception when negative nums are input and also listing them

<img width="1164" height="786" alt="Screenshot 2025-09-13 at 4 40 41 PM" src="https://github.com/user-attachments/assets/760f1bbf-f350-4b98-945b-11b988d158de" />
<img width="1138" height="671" alt="Screenshot 2025-09-13 at 4 47 28 PM" src="https://github.com/user-attachments/assets/52470372-ce67-4ff5-a576-98ac7fdf11c6" />


# Adding more test cases and building our string calc, check commits!
