---
title: "Shortcode Examples"
date: 2026-02-26
categories: ["documentation"]
tags: ["shortcodes", "features"]
---

Darklane includes several custom shortcodes to enhance your content beyond standard Markdown.

This post demonstrates the *alert*, *highlight*, *details*, *img*, *tab*, *tabgroup*, *table*, and *youtube* shortcodes.

<!--more-->
{{< hr >}}


## Alert Shortcodes
{{< layout cols="1 1" gap="1rem" >}}
{{< md >}}
Alerts come in several types for different purposes:

{{< alert info >}}
This is an informational alert. Great for sharing helpful info.
{{< /alert >}}

{{< alert note >}}
This is a note alert. Use it for general observations or side notes.
{{< /alert >}}

{{< alert warning >}}
This is a warning alert. Use it to caution readers about potential issues.
{{< /alert >}}

{{< alert success >}}
This is an success alert. Perfect for highlighting achievements.
{{< /alert >}}

{{< alert error >}}
This is an error alert. Perfect for highlighting mistakes to avoid.
{{< /alert >}}

{{< alert important >}}
This is an important alert. Use it for **critical** information.
{{< /alert >}}

You can also create unlabeled alerts:

{{< alert >}}
This is a simple alert without a label, useful for general callouts.
{{< /alert >}}
{{< /md >}}

{{< md >}}
### alert types:

- info
- note
- warning
- success
- error
- important
- (empty) - no label
{{< /md >}}
{{< /layout >}}

## Highlight Shortcodes
{{< layout cols="1 1" gap="1rem" >}}
{{< md >}}
Highlights are similar to alerts but with different styling:

{{< highlight info >}}
Highlights are great for key takeaways and important points.
{{< /highlight >}}

{{% highlight note %}}
Highlights are great for sharing key takeaways and notes.
{{% /highlight %}}

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
{{< /md >}}
{{< md >}}
### highlight types
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

{{< table color="success" >}}
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
