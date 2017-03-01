---
layout: post
title: How to use Puer Studio
date: 2017-03-01
category: basic
author: puer.studio
tags: [tutorial]
typora-root-url: ../
---

## Overview


[Framer Studio](https://framer.com) is a greate tool for design prototype for web and mobile.  [it's examples](https://framer.com/examples/featured/) demonstrate it's ability for design amazing animated prototype.

[Puer Studio](http://puer.studio) is inspired by framer. it's aiming for generate clean, well
structured code for designer and front end engineer.

<!-- **Markdown** is created by [Daring Fireball](http://daringfireball.net/), the original guideline is [here](http://daringfireball.net/projects/markdown/syntax). Its syntax, however, varies between different parsers or editors. **Typora** is using [GitHub Flavored Markdown][GFM].

Please note that HTML fragments in markdown source will be recognized but not parsed or rendered. Also, there may be small reformatting on the original markdown source code after saving.
 -->
* Outline
{:toc}

### Layer

Layers are the basic containers.
To create a layer, use the ```new``` keyword. Every layer has a set of default properties: a blue background, and a default width and height of 100.
``` coffeescript
A = new Layer
```

output of html

``` html
<div class="tree">
  <a class="A">Text</a>
</div>
```

it has defualt style as following.

``` css
.tree{
display: flex;
width: 640.0px;
height: 780.0px;
margin-left: auto;
background-color: white;
margin-right: auto;
}
.A{
display: flex;
background-color: blue;
height: 100.0px;
width: 100.0px;
}
```

#### layer.parent
user keyword ```parent``` to specify the generation.
```
A = new Layer
B = new Layer
  parent: A
```

### Text

Text are the containers for text.
To create a layer, use the ```new``` keyword. and it will has the default text: **text**.
to change the text: use ```content: 'Puer Studio'```
to create text.

``` coffeescript
A = new Text
  content: 'puer studio'
```

and the related code is as following.

``` html
  <div class="tree">
  <a class="A">Text</a>
  </div>
```

### Button

use ``` content: 'login'``` to change default value of button.
```
A = new Button
  content: 'A'
```

## How to use import the code in any projects.
recently, puer studio just cound generate code for **html** and **vdom**。

- Step 1, preview the code.
click **preview** button will open a tab for preview your design. You can check your design here.

-  Step 2. import the files (recommends)


As [Puer Studio] is developed on the top of [Bulma](http://bulma.io/) (a modern CSS framework based on Flexbox), maybe you should import the file to your project.

And [normalize.css](https://necolas.github.io/normalize.css/) is used in Puer for makes browsers render all elements more consistently and in line with modern standards( according to normalize's words).

so before you paste the code into your project. import the files.
``` html
<link rel=stylesheet type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.3.1/css/bulma.css">
<link rel=stylesheet type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
```
- Step 3. paste the generate code

if you need more support for any language and framework, let me know in [issue](https://github.com/ranglang/dumbframer).

 the code for vdom.
``` javascript
  div('.A', {style: {width: "100px"}}, [])
```


## Set properties

To set CC style properties for the layer. you simple type ``propertyName : value```

```
A = new Layer
  backgroundColor: 'white'
```

[full list ](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Properties_Reference) couldBe found here.


## Some tips
  TODO
