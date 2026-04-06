# Darklane

A clean, dark-themed Hugo blog template designed for technical writing and documentation.

![Hugo](https://img.shields.io/badge/Hugo-0.112+-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)

## Features

- **Dark Color Scheme** - Easy on the eyes with carefully chosen accent colors
- **Syntax Highlighting** - Beautiful code blocks with support for multiple languages
- **Custom Shortcodes** - Hints, flags, collapsible sections, tabs, tables, galleries, layouts, and more
- **LaTeX Support** - Write mathematical expressions inline or as display equations
- **Responsive Design** - Works great on desktop and mobile devices
- **Full-Width Posts** - Maximum layout flexibility with sidebar on home/list pages only
- **CSS Variables** - Easy color customization through centralized configuration
- **Clean Typography** - Optimized for long-form technical reading

## Demo

![Darklane Theme](images/darklane-example.png)

Check out the [demo](https://hadella.github.io/darklane/) to see all features in action.

## Installation

### As a Git Submodule (Recommended)

Navigate to your Hugo site directory and add the theme:

```bash
git submodule add https://github.com/hadella/darklane.git themes/darklane
```

Then add the theme to your `hugo.toml`:

```toml
theme = "darklane"
```

### As a Clone

```bash
cd themes
git clone https://github.com/hadella/darklane.git
```

## Configuration

Copy the example configuration from `exampleSite/hugo.toml` to your site's root directory and customize:

```toml
baseURL = "https://example.org/"
languageCode = "en-us"
title = "Your Site Title"
theme = "darklane"

paginate = 5

[markup]
  [markup.highlight]
    noClasses = false
  [markup.goldmark.renderer]
    unsafe = true

[params]
  author = "Your Name"
  description = "Your site description"
  recentPostsCount = 5
  defaultBanner = "/images/default-banner.jpg"

[menu]
  [[menu.main]]
    name = "Home"
    url = "/"
    weight = 1
  [[menu.main]]
    name = "About"
    url = "/about/"
    weight = 2
```

## Creating Content

### Posts

Create a new post:

```bash
hugo new posts/my-post-name/index.md
```

Add images to `posts/my-post-name/images/` to keep everything organized.

### Front Matter

```yaml
---
title: "Your Post Title"
date: 2025-02-26
categories: ["category"]
tags: ["tag1", "tag2"]
banner: "images/banner.jpg"  # Optional
---

Your intro paragraph here.

<!--more-->

Rest of your content...
```

The `<!--more-->` comment marks where the preview ends on list pages.

## Customization

### Colors

All theme colors are defined as CSS variables in `static/css/darklane.css`. Edit the `:root` section to customize:

```css
:root {
  --color-primary: #39BAE6;      /* Cyan */
  --color-secondary: #26a98b;    /* Green */
  --color-accent-1: #C678DD;     /* Magenta */
  --color-accent-2: #FF8F40;     /* Orange */
  --color-accent-3: #FFBF00;     /* Yellow */
  --color-error: #f92672;        /* Red */
  /* ... and more */
}
```

### Header Images

- **Title Banner**: Place `title-banner.png` in `static/images/` for the site header background
- **Post Banners**: Add banner images to each post's `images/` folder or set a default in config

## Post Layout

Individual posts use full-width layout (no sidebar) for maximum flexibility with multi-column content. The sidebar appears only on the home page and list pages (categories, tags, archives).

For single-column prose, use the `columns` shortcode to create readable text width:
```markdown
{{< columns count="2" >}}
Your paragraphs here flow across two columns naturally.
{{< /columns >}}
```

For custom layouts, use `layout`/`cell`/`md` shortcodes to arrange content side-by-side.

## Shortcodes

Darklane includes several custom shortcodes:

### hint
Subtle border-left callout for supplementary content:
```markdown
{{% hint info %}}
This is a helpful tip.
{{% /hint %}}
```

Types: `info`, `note`, `warning`, `success`, `error`, `important`, or
empty for an unlabeled callout.

### flag

Prominent full-border callout with icon prefix:

```markdown
{{% flag info %}}
Key point or important information.
{{% /flag %}}
```

Types: `info`, `note`, `warning`, `success`, `error`, `important`.
Second positional param `true` adds a tinted background.

### details

```markdown
{{< details "Click to expand" >}}
Hidden content here.
{{< /details >}}
```

### tab / tabgroup

```markdown
{{< tabgroup >}}
{{< tab title="Python" >}}
\`\`\`python
print("Hello")
\`\`\`
{{< /tab >}}
{{< tab title="JavaScript" >}}
\`\`\`javascript
console.log("Hello");
\`\`\`
{{< /tab >}}
{{< /tabgroup >}}
```

### gallery
```
{{< gallery >}}
https://r2.yourdomain.com/cars/frog/shot1.jpg
https://r2.yourdomain.com/cars/frog/shot2.jpg
/images/local-image.jpg
{{< /gallery >}}

{{< gallery width="600" >}}
images/bundle-image.jpg
{{< /gallery >}}
```

One image URL per line in the shortcode body. Paths can be absolute
URLs (e.g. Cloudflare R2), relative to `static/`, or relative to
the page bundle.

Parameters:
- `width` — max width in px, centered on page (default: full width)

Navigation via on-screen left/right arrows or keyboard arrow keys
while hovering over the gallery. Counter shown as `1/N` centered
between arrows. Image height is driven by the image dimensions —
no fixed aspect ratio.

### img

```markdown
{{< img src="images/photo.jpg" width="600" caption="Photo caption" >}}
```

### table

```markdown
{{< table color="info" >}}

| Header 1 | Header 2 |
|----------|----------|
| Data 1   | Data 2   |

{{< /table >}}
```

Colors: `info`, `note`, `warning`, `success`, `error`, `important`

### layout / cell / md
```
{{< layout cols="1 1" gap="1rem" >}}
{{< cell >}}
{{< img src="photo.jpg" >}}
{{< /cell >}}
{{< md >}}
- markdown list
- **bold** text
{{< /md >}}
{{< /layout >}}
```

Use `cell` for shortcode and HTML content. Use `md` for markdown content.
Both accept a `text` param for alignment: `left`, `center`, `right`, `justify`.

### columns
```markdown
{{< columns count="2" gap="2rem" >}}
Text flows naturally across columns like a newspaper.
{{< /columns >}}
```

Parameters:
- `count` — number of columns (default: `2`)
- `gap` — space between columns (default: `2rem`)
- `align` — text alignment: `left`, `center`, `right`, `justify`
             (default: `left`)

### color
```markdown
Regular text with {{< color "primary" >}}cyan highlight{{< /color >}} inline.
```

Colors: `primary`, `secondary`, `accent-1`, `accent-2`, `accent-3`, `error`

### hr
```markdown
{{< hr >}}
{{< hr dots >}}
{{< hr dashed >}}
{{< hr fade >}}
```

Parameters:
- style (positional 0) — `line`, `dots`, `fade`, `dashes` (default: `line`)
- color (positional 1) — `mute`, `info`, `note`, `warning`, `success`,
                          `error`, `important` (default: `mute`)

### space
```markdown
{{< space >}}
{{< space "3rem" >}}
```
[
Adds vertical whitespace between content blocks. Useful for creating extra breathing room beyond default spacing.

Parameters:
- `height` — Amount of vertical space (default: `1rem`)](Parameters: height (positional 0) — any valid CSS height value (default: `1rem`).)

### youtube

```markdown
{{< youtube "VIDEO_ID" title="Video Title" >}}
```

## Header Colors

Add color to headers using CSS classes:

```markdown
## Colored Header {.text-primary}
## Another Color {.text-accent-2}
```

Available: `.text-primary`, `.text-secondary`, `.text-accent-1`, `.text-accent-2`, `.text-accent-3`, `.text-error`, `.text-bright`, `.text-dim`

## Year Archives

Year archives require creating a section page for each year:
```bash
mkdir -p content/posts/YYYY
cat > content/posts/YYYY/_index.md << 'EOF'
---
title: "YYYY"
---
EOF
```

Replace `YYYY` with the year (e.g., 2026). This only needs to be done once per year when you publish your first post of that year.

## Development

To run the example site locally:

```bash
cd exampleSite
hugo server -D
```

## Requirements

- Hugo 0.112.0 or higher (extended version recommended)
- Git (for installation via submodule)

## License

This theme is released under the [MIT License](LICENSE).

## Credits

Created by [Justin Hadella](https://github.com/hadella)

## Contributing

Issues and pull requests are welcome! Please feel free to contribute.
