---
title: "More Shortcode Examples"
date: 2026-03-31
categories: ["documentation"]
tags: ["shortcodes", "features"]
---

Darklane includes layout and styling shortcodes for enhanced content control.

This post demonstrates the *gallery*, *space*, *columns*, *color*, and *hr* shortcodes.

<!--more-->

## Gallery Shortcode

The *gallery* shortcode makes it easy to show multiple images as a slideshow without cluttering your post. Navigate with arrow buttons or keyboard.

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

### Custom Width Gallery

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

The `space` shortcode can be used to insert blank lines or breaks between elements.

The next two images have the default gap between them
{{< img src="images/frame-1.jpg" width="600" >}}
{{< img src="images/frame-2.jpg" width="600" >}}

By using the `space` shortcode we can increase the gap between the next two images.
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
By using the `space` shortcode in between this line is now below the others.

## Columns Shortcode

{{< columns >}}
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.

{{< hint note >}}
Columns automatically flows and sizes
{{< /hint>}}

{{< img src="images/frame-1.jpg" >}}

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
{{< /columns >}}

> In the next example we'll distribute a bunch of bullet text across three columns. The shortcode does all the work!

{{< columns count=3 >}}
- feature 1
- feature 2
- feature 3
- feature 4
- feature 5
- feature 6
- feature 7
- feature 8
- feature 9
- feature 10
- feature 11
- feature 12
{{< /columns >}}

## Color Shortcode

The {{< color "primary" >}}color{{< /color >}} shortcode can be used to give a {{< color "accent-2" >}}splash{{< /color >}} of {{< color "accent-3" >}}color{{< /color >}} within text.

{{< color "secondary" >}}
{{< md >}}
This is a entire block of colored test within an **md** shortcode.
{{< /md>}}
{{< /color >}}

{{< space "2rem" >}}

## HR Shortcode

The default markdown horizontal rule (`---`) looks like this:

---

{{< space "4rem" >}}

The **hr** shortcode provides styled dividers for better visual separation between sections.

Without options, it renders a thin solid line:

{{< hr >}}

Same as explicitly using `line`:

{{< hr line >}}

The `dots` style creates a centered ornament:

{{< hr dots >}}

Dashed line span the full width using success color:

{{< hr dashed success >}}

The `fade` style creates a gradient from the edges using note color:

{{< hr fade note >}}

### Available styles
- `line` — solid line (default)
- `dots` — centered three-dot ornament
- `dashed` — dashed line across
- `fade` — gradient fade from edges
