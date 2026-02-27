---
title: "Markdown Guide"
date: 2026-02-25
categories: ["documentation"]
tags: ["markdown", "formatting", "guide"]
---

This post demonstrates the standard Markdown formatting features supported by Darklane.

<!--more-->

## Headers

Darklane supports all six header levels with clean typography:

# H1 Header
## H2 Header  
### H3 Header
#### H4 Header
##### H5 Header
###### H6 Header

You can also add color to headers using CSS classes:

## Colored Header {.text-primary}
## Another Color {.text-accent-2}

The colors are:
  - .text-primary
  - .text-secondary
  - .text-accent-1
  - .text-accent-2
  - .text-accent-3
  - .text-error
  - .text-bright
  - .text-dim

## Text Formatting

**Bold text** for emphasis, *italic text* for subtle emphasis, and `inline code` for technical terms.

You can combine them: ***bold and italic*** or **bold with `code`**.

## Lists

Unordered lists:

- First item
- Second item
  - Nested item
  - Another nested item
- Third item

Ordered lists:

1. First step
1. Second step
   1. Sub-step A
   1. Sub-step B
1. Third step

## Code Blocks

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

You can also highlight specific lines:

```python {hl_lines=[2,4]}
def calculate_sum(a, b):
    result = a + b  # This line is highlighted
    print("Calculating...")
    return result   # This line is highlighted too
```

## Tables

| Feature | Support | Notes |
|---------|---------|-------|
| Syntax Highlighting | ✓ | Multiple languages |
| LaTeX Math | ✓ | Inline and display |
| Responsive | ✓ | Mobile-friendly |
| Dark Mode | ✓ | Built-in |

## Blockquotes

> This is a blockquote. It's useful for highlighting important information or quoting other sources.
>
> Blockquotes can span multiple paragraphs and include other formatting.

## Links and Images

Visit the [Hugo documentation](https://gohugo.io/) for more information.

Images work too (when you add them to your post bundle):

```markdown
![Alt text](image.jpg)
```

## LaTeX Math

Inline math: $E = mc^2$

Display math:

$$
\int_{-\infty}^{\infty} e^{-x^2} dx = \sqrt{\pi}
$$

## Horizontal Rules

Use three dashes for a horizontal rule:

---

That's the basics of Markdown in Darklane!
