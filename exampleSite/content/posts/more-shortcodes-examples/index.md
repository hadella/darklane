---
title: "Gallery Shortcode"
date: 2026-03-31
categories: ["documentation"]
tags: ["shortcodes", "features"]
---

The gallery shortcode makes it easy to show multiple images as a slideshow without cluttering your post. Navigate with arrow buttons or keyboard.

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
