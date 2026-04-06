---
title: "Shortcode Examples"
date: 2026-02-26
categories: ["documentation"]
tags: ["shortcodes", "features"]
---

Darklane includes several custom shortcodes to enhance your content beyond standard Markdown.

This post demonstrates the *hint*, *flag*, *details*, *img*, *tab*, *tabgroup*, *table*, and *youtube* shortcodes.

<!--more-->
{{< hr >}}


## Hint Shortcodes
{{< layout cols="1 1" gap="1rem" >}}
{{< md >}}
Hints come in several types for different purposes:

{{< hint info >}}
This is an informational hint. Great for sharing helpful info.
{{< /hint >}}

{{< hint note >}}
This is a note hint. Use it for general observations or side notes.
{{< /hint >}}

{{< hint warning >}}
This is a warning hint. Use it to caution readers about potential issues.
{{< /hint >}}

{{< hint success >}}
This is an success hint. Perfect for highlighting achievements.
{{< /hint >}}

{{< hint error >}}
This is an error hint. Perfect for highlighting mistakes to avoid.
{{< /hint >}}

{{< hint important >}}
This is an important hint. Use it for **critical** information.
{{< /hint >}}

You can also create unlabeled hint:

{{< hint >}}
This is a simple hint without a label, useful for general callouts.
{{< /hint >}}
{{< /md >}}

{{< md >}}
### hint types:
- info
- note
- warning
- success
- error
- important
- (empty) - no label
{{< /md >}}
{{< /layout >}}

## Flag Shortcodes
{{< layout cols="1 1" gap="1rem" >}}
{{< md >}}
Flags are similar to hints but with different styling:

{{< flag info >}}
Flags are great for key takeaways and important points.
{{< /flag >}}

{{% flag note %}}
Flags are great for sharing key takeaways and notes.
{{% /flag %}}

{{< flag warning >}}
Be careful with this approach in production environments.
{{< /flag >}}

{{< flag success >}}
Your configuration is working correctly!
{{< /flag >}}

{{< flag error >}}
This operation cannot be reversed.
{{< /flag >}}

{{< flag important >}}
Always backup your data before proceeding.
{{< /flag >}}
{{< /md >}}
{{< md >}}
### flag types
- info
- note
- warning
- success
- error
- important
{{< /md >}}
{{< /layout>}}

## Details (Collapsible Sections)

Use details for optional information that readers can expand:
{{< layout gap="1rem">}}

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

{{< /layout >}}

## Tab Groups
Tab groups let you show related content in different formats:

{{< layout cols="1 1" >}}

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

{{< md >}}
{{< /md >}}

{{< /layout >}}

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

Use the `table` shortcode to add a little color to your table headers:

{{< columns >}}

{{< table success >}}
| Language   | Type        | First Release |
|----------  |-------------|---------------|
| Python     | Interpreted | 1991 |
| JavaScript | Interpreted | 1995 |
| Go         | Compiled    | 2009 |
| Rust       | Compiled    | 2010 |
{{< /table >}}

{{< md >}}
### Colors
- `info`
- `note`
- `warning`
- `success`
- `error`
- `important`
{{< /md >}}

{{< /columns >}}

## YouTube Embeds

Embed YouTube videos easily:

```
{{</* youtube "VIDEO_ID" title="Video Title" */>}}
```

These shortcodes help you create professional, informative content without writing custom HTML.
