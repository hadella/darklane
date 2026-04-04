---
title: "Markdown Guide"
date: 2026-02-25
categories: ["documentation"]
tags: ["markdown", "formatting", "guide"]
---

This post demonstrates the standard Markdown formatting features supported by Darklane.

*The post itself uses many of Darklane's Hugo shortcodes internally.*

<!--more-->
{{< hr >}}

{{< columns >}}
## Headers

Darklane supports all six header levels with clean typography:

# H1 Header
## H2 Header  
### H3 Header
#### H4 Header
##### H5 Header
###### H6 Header

{{< alert info >}}
You can also add color to headers using CSS classes
{{< /alert >}}

## Colored Header {.text-primary}
## Another Color {.text-accent-2}

## colors:
  - .text-primary
  - .text-secondary
  - .text-accent-1
  - .text-accent-2
  - .text-accent-3
  - .text-error
  - .text-bright
  - .text-dim

{{< /columns >}}

{{< layout cols="1 1">}}
{{< md >}}
## Text Formatting

**Bold text** for emphasis, *italic text* for subtle emphasis, and `inline code` for technical terms.

You can combine them: ***bold and italic*** or **bold with `code`**.
{{< /md >}}
{{< /layout>}}

## Lists
{{< layout cols="1 1" >}}

{{< md >}}
Unordered lists:
- First item
- Second item
  - Nested item
  - Another nested item
- Third item
{{< /md >}}

{{< md >}}
Ordered lists:
1. First step
2. Second step
   1. Sub-step A
   2. Sub-step B
3. Third step
{{< /md >}}
{{< /layout >}}

## Code Blocks
{{< layout cols="1 1" gap="1rem" >}}
{{< md >}}
Syntax highlighted code blocks with language detection:

```python
def fibonacci(n):
    if n <= 1:
        return n
    return fibonacci(n-1) + fibonacci(n-2)

print(fibonacci(10))
```

```javascript
function greet(name) {
  console.log(`Hello, ${name}!`);
}

greet("World");
```
{{< /md >}}
{{< md >}}
You can also **highlight** specific lines:

```python {hl_lines=[2,4]}
def calculate_sum(a, b):
    result = a + b  # This line is highlighted
    print("Calculating...")
    return result   # This line is highlighted too
```
{{< /md>}}
{{< /layout >}}

## Tables
This table shows the default stying; it doesn't use a shortcode.

{{< columns >}}

{{< md >}}
| Language   | Type        | First Release |
|------------|-------------|---------------|
| Python     | Interpreted | 1991          |
| JavaScript | Interpreted | 1995          |
| Go         | Compiled    | 2009          |
| Rust       | Compiled    | 2010          |
{{< /md >}}

{{< alert note >}}
Tables don't need to *line-up* in the markdown to render correctly, but are
much easier to interpret when just reading as text.
{{< /alert>}}

{{< /columns >}}

The next example uses the `table` shortcode.

{{< layout cols="1 1" gap="2rem" >}}

{{< cell >}}
{{< table >}}
| Feature             | Support | Notes              |
|---------------------|---------|--------------------|
| Syntax Highlighting | ✓       | Multiple languages |
| LaTeX Math          | ✓       | Inline and display |
| Responsive          | ✓       | Mobile-friendly    |
| Dark Mode           | ✓       | Built-in           |
{{< /table >}}
{{< /cell >}}

{{< cell >}}
{{< alert info >}}
Without a color argument, the border between the labels data will be `--color-primary`.
{{< /alert >}}
{{< /cell >}}

{{< /layout >}}

{{< space height="2rem" >}}

## Blockquotes
{{< layout col="1 1" >}}
{{< md >}}
> This is a blockquote. It's useful for highlighting important information or quoting other sources.
> Blockquotes can span multiple paragraphs and include other formatting.
{{< /md >}}

{{< md >}}
{{< /md >}}

{{< /layout >}}

## Links and Images
{{< layout col="1 1" >}}
{{< md >}}
Visit the [Hugo documentation](https://gohugo.io/) for more information.

Images work too (when you add them to your post bundle):

```markdown
![Alt text](image.jpg)
```
{{< /md >}}

{{< md >}}
{{< /md >}}

{{< /layout >}}

## LaTeX Math
{{< layout col="1 1" >}}
{{< md >}}
Inline math: $E = mc^2$

Display math:

$$
\int_{-\infty}^{\infty} e^{-x^2} dx = \sqrt{\pi}
$$
{{< /md >}}

{{< md >}}
{{< /md >}}

{{< /layout >}}

{{< space >}}

That's the basics of Markdown in Darklane!
