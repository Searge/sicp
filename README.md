# sicp
🚀 SICP https://mitpress.mit.edu/sicp/

<a href="https://www.youtube.com/watch?v=a0YrCABCOEY">
    <img src="img/dont_miss.png" alt="SICP Anime Opening">
</a>

## Typographical Conventions
In examples and procedure descriptions and all other places where the evaluation of Scheme expression is shown, we use some notation for denoting the output and evaluation results of expressions.
The symbol `⇒` is used to tell which value is returned by an evaluation: 

```scheme
(+ 1 2)
⇒ 3
```

Some procedures produce some output besides returning a value. This is denoted by the
symbol `⊣`.

```scheme
(begin (display 1) (newline) ’hooray)
⊣ 1
⇒ hooray
```

As you can see, this code prints `1` (denoted by `⊣`), and returns hooray (denoted by `⇒`).
