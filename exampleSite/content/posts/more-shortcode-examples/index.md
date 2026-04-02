---
title: "More Shortcode Examples"
date: 2026-03-31
categories: ["documentation"]
tags: ["shortcodes", "features"]
---

The *gallery* shortcode makes it easy to show multiple images as a slideshow without cluttering your post. Navigate with arrow buttons or keyboard.

The *space* shortcode can be used to add gaps between elements.

<!--more-->

Key features:

- Takes a list of image URLs (one per line)
- Shows one image at a time with prev/next arrow buttons
- Keyboard navigation (left/right arrow keys)
- Counter showing "X/N" position
- Images adapt to their natural dimensions (no forced aspect ratio after your fixes)
- Auto-hides arrows if only one image

{{< gallery >}}
images/frame-1.jpg
images/frame-2.jpg
images/frame-3.jpg
images/frame-4.jpg
images/frame-5.jpg
{{< /gallery >}}

A simple gallery demo — use the arrows or keyboard left/right to cycle through images.

## Custom Width Gallery

{{< gallery width="600" >}}
images/frame-1.jpg
images/frame-2.jpg
images/frame-3.jpg
images/frame-4.jpg
images/frame-5.jpg
{{< /gallery >}}

We can also use a "width" param as an argument to reduce or control the width.

> Notice each gallery can be operated independentally

## Space Shortcode

The space shortcode can be used to insert blank lines or breaks between elements.

The next two images have the default gap between them
{{< img src="images/frame-1.jpg" width="600" >}}
{{< img src="images/frame-2.jpg" width="600" >}}

By using the *space* shortcode we can increase the gap between the next two images.
{{< img src="images/frame-3.jpg" width="600" >}}
{{< space >}}
{{< img src="images/frame-4.jpg" width="600" >}}

> In the text below we'll show how markdown text doesn't respect the addition of extra whitespace. We'll repeat several text sections: the first will flow all the text together, the next will add whitespace but it will be ignored, and the final one will use the space shortcode.*

This is a line of text. And this is another. Notice the text will flow naturally together.

{{< space >}}

This is a line of text.
And this is another.
Notice the text will flow naturally together even though each sentence was on its own line.

{{< space >}}

This is a line of text. And this is yet another.
{{< space >}}
By using the *space* shortcode in between this line is now below the others.
