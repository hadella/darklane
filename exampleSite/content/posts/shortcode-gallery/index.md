---
title: "Shortcode Gallery"
date: 2026-02-26
categories: ["documentation"]
tags: ["shortcodes", "features"]
---

Darklane includes several custom shortcodes to enhance your content beyond standard Markdown.

<!--more-->

## Alert Shortcodes

Alerts come in several types for different purposes:

{{< alert warning >}}
This is a warning alert. Use it to caution readers about potential issues.
{{< /alert >}}

{{< alert info >}}
This is an informational alert. Great for sharing helpful tips.
{{< /alert >}}

{{< alert note >}}
This is a note alert. Use it for general observations or side notes.
{{< /alert >}}

{{< alert error >}}
This is an error alert. Perfect for highlighting mistakes to avoid.
{{< /alert >}}

{{< alert important >}}
This is an important alert. Use it for critical information.
{{< /alert >}}

You can also create unlabeled alerts:

{{< alert >}}
This is a simple alert without a label, useful for general callouts.
{{< /alert >}}

### alert types:

- warning
- info
- note
- error
- important
- (empty) - no label

## Highlight Shortcodes

Highlights are similar to alerts but with different styling:

{{< highlight tip >}}
Highlights are great for key takeaways and important points.
{{< /highlight >}}

{{< highlight warning >}}
e careful with this approach in production environments.
{{< /highlight >}}

{{< highlight success >}}
Your configuration is working correctly!
{{< /highlight >}}

{{< highlight error >}}
This operation cannot be reversed.
{{< /highlight >}}

{{< highlight important >}}
Always backup your data before proceeding.
{{< /highlight >}}

### highlight types

- tip
- warning
- success
- error
- important

## Details (Collapsible Sections)

Use details for optional information that readers can expand:

{{< details "Click to see technical details" >}}
Here's some detailed technical information that most readers might not need. By hiding it in a collapsible section, you keep the main content focused while still providing depth for interested readers.

You can include any Markdown content here:
- Lists
- Code blocks
- **Formatted text**
{{< /details >}}

{{< details "Configuration example" >}}
```yaml
theme: darklane
params:
  author: Your Name
  description: Your site description
```
{{< /details >}}

## Tab Groups

Tab groups let you show related content in different formats:

{{< tabgroup >}}

{{< tab title="Python" >}}
```python
def hello():
    print("Hello, world!")
```
{{< /tab >}}

{{< tab title="JavaScript" >}}
```javascript
function hello() {
  console.log("Hello, world!");
}
```
{{< /tab >}}

{{< tab title="Go" >}}
```go
package main

import "fmt"

func main() {
    fmt.Println("Hello, world!")
}
```
{{< /tab >}}

{{< /tabgroup >}}

## Images with Captions

The image shortcode provides consistent styling and optional captions:

```
{{</* img src="images/photo.jpg" caption="A beautiful landscape" */>}}
```

You can also control the width:

```
{{</* img src="images/photo.jpg" width="600" caption="Smaller image" */>}}
```

## Colored Tables

Use the table shortcode to add color to your table headers:

{{< table color="secondary" >}}

| Language | Type | First Release |
|----------|------|---------------|
| Python | Interpreted | 1991 |
| JavaScript | Interpreted | 1995 |
| Go | Compiled | 2009 |
| Rust | Compiled | 2010 |

{{< /table >}}

Available colors: `primary`, `secondary`, `accent-1`, `accent-2`, `accent-3`

## YouTube Embeds

Embed YouTube videos easily:

```
{{</* youtube "VIDEO_ID" title="Video Title" */>}}
```

## Combining Shortcodes

You can combine shortcodes to create rich content:

{{< highlight tip >}}
**Before starting:** Make sure you have all prerequisites installed.
{{< /highlight >}}

{{< details "Prerequisites list" >}}
- Hugo 0.112.0 or higher
- Git
- A text editor
- Basic knowledge of Markdown
{{< /details >}}

{{< highlight success >}}
Once you have everything ready, you can proceed with the installation!
{{< /alert >}}

These shortcodes help you create professional, informative content without writing custom HTML.
