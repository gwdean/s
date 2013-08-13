Scheme
------
Code in this section was adapted from Gerald Jay Sussman
and Jack Wisdom's *Functional Differential Geometry*.

## Procedure Calls
    
	(+ 1 2.14) ;=> 3.14
    (+ 1 (* 2 1.07)) ;=> 3.14

    ( _operator_ _operand-1_ ... _operand-2_ )

## Lambda Expressions

    (lambda (x) (* x x))
	
	((lambda (x) (* x x)) 4) ;=> 16
	
	(lambda /formal-parameters body/)
	
## Definitions

    (define pi 3.1415926...)
	
	(define square (lambda (x) (* x x)))
	
	(* 4 pi (square 5)) ;=> 314.159...
	
	(define (square x) (* x x))
	
    (define compose
	  (lambda (f g)
	    (lambda (x)
		  (f (g x)))))
		  
	((compose square sin) 2) ;=> .8268...
	
	(square (sin 2)) ;=> .8268...
	
	(define (compose f g)
	  (lambda (x)
	    (f (g x))))
	
## Conditionals
## Recursive Procedures
## Local Names
## Compound Data -- Lists and Vectors
## Symbols
## Links to Markdown Sources

Thus, "Markdown" is two things: (1) a plain text formatting syntax;
and (2) a software tool, written in Perl, that converts the plain text
formatting to HTML. See the [Syntax][] page for details pertaining to
Markdown's formatting syntax. You can try it out, right now, using the
online [Dingus][].

  [syntax]: /projects/markdown/syntax
  [dingus]: /projects/markdown/dingus
<http://daringfireball.net/projects/markdown/index.text>

(You can use this '.text' suffix trick to view the Markdown source for
the content of each of the pages in this section, e.g. the
[Syntax][s_src] and [License][l_src] pages.)

  [s_src]: /projects/markdown/syntax.text
  [l_src]: /projects/markdown/license.text

Markdown is free software, available under a BSD-style open source
license. See the [License] [pl] page for more information.

  [pl]: /projects/markdown/license


Acknowledgements <a id="acknowledgements" />
----------------

[Aaron Swartz][] deserves a tremendous amount of credit for his feedback on the
design of Markdown's formatting syntax. Markdown is *much* better thanks
to Aaron's ideas, feedback, and testing. Also, Aaron's [html2text][]
is a very handy (and free) utility for turning HTML into
Markdown-formatted plain text.

[Nathaniel Irons][], [Dan Benjamin][], [Daniel Bogan][], and [Jason Perkins][]
also deserve thanks for their feedback.

[Michel Fortin][] has ported Markdown to PHP; it's a splendid port, and highly recommended for anyone looking for a PHP implementation of Markdown.

  [Aaron Swartz]:		http://www.aaronsw.com/
  [Nathaniel Irons]:	http://bumppo.net/
  [Dan Benjamin]:		http://hivelogic.com/
  [Daniel Bogan]:		http://waferbaby.com/
  [Jason Perkins]:		http://pressedpants.com/
  [Michel Fortin]:		http://www.michelf.com/projects/php-markdown/
  [html2text]:          http://www.aaronsw.com/2002/html2text/
 
  [tfmenu]: /graphics/markdown/mt_textformat_menu.png
