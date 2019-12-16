# Notes

## Foreword

### Three foci of phenomena:

- The human mind
- Collections of computer programs
- The computer

## Chapter 1: Building Abstractions with Procedures

- computational processes: abstract beings that inhabit computers. As they evolve, processes manipulate other abstract things called **data**
- The evolution of a process is directed by a pattern of rules called a **program**
- Lisp: Lisp was invented in the late 1950s as for a formalism for reasoning about the use of certain kinds of logical expressions, called **recursion equations**, as a model for computation
- Why List: Because the language possesses unique features that make it an excellent medium for studying important programming constructs and data structures and for relating them to the linguistic features that support them. The most significant of these features is the fact that Lisp descriptions of processes, called **procedures**, can themselves be represented and manipulated as Lisp data.

### 1.1 The Elements of Programming

- primitive expressions, which represent the simplest entities the language is concerned with,
- means of combination, by which compound elements are built from simpler ones, and
- means of abstration, by which compound elements can be named and manipulated as units
- **procedures and data**

#### 1.1.3 Evaluating Combinatings

To evaluate a combination, do the following:

1. Evaluate the subexpressions of the combination.
2. Apply the procedure that is the value of the leftmost subexpression to the arguments that are the values of the other subexpressions.
3. the values of numerals are the numbers that they name,
4. the values of built-in operators are the machine instruction sequences that carry out the corresponding operations, and
5. the values of other names are the objects associated with those names in the environment

- special form: (define x 3) is not a combination
- The various kinds of expressions (each with its associated evaluation rule) constitute the syntax of the programming language.
- Lisp has a very simple syntax; that is, the evaluation rule for expressions can be described by a simple general rule together with specialized rules for a small number of special forms

#### 1.1.4 Compound Procedures

We have identified in Lisp some of the elements that must apperar in any powerful programming language:

- Numbers and arithmetic operations are primitive data and procedures
- Nesting of combinations provides a means of combining operations
- Definitions that associate names with values provide a limited means of abstration

```
(define (<name> <formal parameters>)
  <body>)
```

#### 1.1.5 The Substitution Model for Procedure Application

To evaluate a combination whose operator names a compound procedure, the interpreter follows much the same process as for combinations whose operators name primitive procedures.

- normal-order evaluation
- applicative-order evaluation

#### 1.1.6 Conditional Expressions and Predicates

- case analysis
- There is a special form in Lisp for notating such a case analysis. It is called `cond` (which stands for "conditional")

```
(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))
```

The general form of a conditional expression is:

```
(cond (<p1> <e1>)
      (<p2> <e2>)
      ...
      (<pn> <en>))
```

```
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))
```

```
normal order (fully expand then reduce; lazy; do not evaluate the arguments until its needed):
(test 0 (p))

(if (= 0 0) 0 p))

```

```
applicative order (evaluate the arguments then apply):
(test 0 (p))
(test 0 (p))
(test 0 (p))
```

#### 1.1.7 Example: Square Roots by Newton's Method

- declarative (what is) descriptions v.s. imperative (how to) descriptions
- The set of expressions for which a binding defines a name is called the scope of the name.
- In a procedure definition, the bound variables declared as the formal parameters of the procedure have the body of the procedure as their scope
- The meaning of `good-enough?` should be independing of the names we choose for `guess` and `x` (its formal parameters).

- Lexical scoping dictates that free variables in a procedure are taken to refer to bindings made by enclosing procedure definitions; that is, they are looked up in the environment in which the procedure was defined.

### 1.2 Procedures and the Processes They Generate

- A procedure is a pattern for the **local evolution** of a computational process

#### 1.2.1 Linear Recursion and Iteration

- recursive v.s. iterative
- procedure recursive v.s. progress recursive

#### 1.2.2 Tree Recursion

- In general, the number of steps required by a tree-recursive process will e proportional to the number of nodes in the tree, while the space required will be proportional to the maximum depth of the tree

#### 1.2.3 Order of growth

- Let n be a parameter that measures the size of the problem, and let R(n) be the amount of resources the process requires for a problem of size n.
- We say that R(n) has order of growth theta(f(n)), written R(n) = theta(f(n)), if there are positive constants k1 and k2 independent of n such that k1 f(n) <= R(n) <= k2 f(n) for any sufficiently large value of n

#### 1.2.5 Greatest Common Divisors

- Fermat's Little Theorem: If n is a prime number and a is any positive integer less than n, then a rised to the nth power is congruent to a modulo n.

## Chapter 2: Building Abstractions with Data

## Chapter 3: Modularity, Objects, and State

## Chapter 4: Metalinguistic Abstraction

## Chapter 5: Computing with Register Machines
