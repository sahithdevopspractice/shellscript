# Conditions:
Conditons is used to to take a decision in scripting or coding.

* General syntax for Conditons is:-
```
if (expression){
  statement if expression is true
} 
else{
  statement if expression is false
}
```
```
Greater than -gt, example:- $Number -gt 100
less than -lt, example:- $Number -lt 100
Greater than or equal to -ge, example $Number -ge 100
Less than or equal to -le, example $Number -le 100
```
# EXIT STATUS:-
    To check previous command is success or not. Shell script store the command result in EXIT STATUS, we can get it through ```$?```. If $? is equal to zero then it means the comand is successed, if not zero means the command is failed.
# FUNCTION:-
    The Code which is repeating, can keep it in a function and call it when ever you want.
```
syntax:-
FUNCTION_NAME () {
    statements to run
}
```