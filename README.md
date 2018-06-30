# Structure and Interpretation of Computer Programs 🚀 
<a href="https://www.youtube.com/watch?v=a0YrCABCOEY">
    <img src="img/dont_miss.png" alt="SICP Anime Opening">
</a>

[![forthebadge](https://forthebadge.com/images/badges/built-with-love.svg)](https://forthebadge.com) [![forthebadge](https://forthebadge.com/images/badges/powered-by-electricity.svg)](https://forthebadge.com) 
[![forthebadge](https://forthebadge.com/images/badges/as-seen-on-tv.svg)](https://forthebadge.com) [![forthebadge](https://forthebadge.com/images/badges/check-it-out.svg)](https://forthebadge.com) [![forthebadge](https://forthebadge.com/images/badges/fo-sho.svg)](https://forthebadge.com)
[![forthebadge](https://forthebadge.com/images/badges/does-not-contain-treenuts.svg)](https://forthebadge.com)

* [Official book page](https://mitpress.mit.edu/sicp/)
* [MIT Lectures](http://groups.csail.mit.edu/mac/classes/6.001/abelson-sussman-lectures/)
* [Rus. translation](http://newstar.rinet.ru/~goga/sicp/)

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
