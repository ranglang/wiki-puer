---
layout: post
title: Puer could not support animation Yet
date: 2017-03-08
category: basic
author: puer.studio
tags: [tutorial]
typora-root-url: ../
---

## Why it's difficult for designing a animated page?

I struggled to make puer animated, but i found it's a little difficult.
***state** should  be defined firstly, and reducers should be  defined lately
, and view make the code complicated,  switch code , relationship code.
I thinks it's too much difficult for a UI designer to do thing on such a way.

So,,

 Puer Studio will not support **Animation**, I thinks, For me ,use cyclejs and xstream
directly is a convenient way.

But I'm trying to make Puer to be a good tool making static page, generating code for lot's of
platform and language.


```
A.state:

	x: 1

	y:

		width: 2



A.reducerA:

	(state) =>

		x: state.x +1

		y: state:y + 1



A.click =>

	reducerA



A.view:

	(state) =>

		switch(state.page) =>

			10 =>

				new Layer

					backgroundColor: 'blue'

					color: 'yellow'

				B.state:

					x: 2

				B.reducer:

					x: 3

				B.reducer:

					y:4

				B = new Layer

					parent: A

			20 =>

				new Layer

					backgroundColor: 'blue'
```
