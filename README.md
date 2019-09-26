

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### How to run
```
- clone this repo
- run `bundle install`
TESTS:

run `rspec`
run `rubocop`
```

```
COVERAGE: 100%
```
### Structure

```
 - Class Account is responsible for paying money in and out. User can require Account statement from there. But reposibility for keeping track of account history lays on AccountHistory class.
```

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
![preview](https://previews.dropbox.com/p/thumb/AAmj5Xtg2vq2UeWvnRn_Db2ERUJhIenb2ga8CZlAfiRyorB41DJKkktgulMNUbYb0i0e8MZJav1uyX9ApG49IwKpOxfNp23T4yDXeApUYuiRWrWhkW7QRXHOtCLmip92adsEpH_XhrMGzNtO9rN3YKwJ_tybDzJKH0ZoE79djvwNymKCfC2SilAHxma2cGAIqeJbc7JD27uLMn39xrpvLKC56acCsWwp8-etPKSLTidC4Q1abOJI-ge72p9xO8x3BXKbSOvIBo6BbUVLG-y6PrK4VBykpLGZiwBtqO556FPOnTKo2_lyRSSD0F4uYQEhCfdBCoCsgYNHTbiHjA6Mi0QH/p.png?fv_content=true&size_mode=5)

