# Website Sitemap And Low-Fidelity Wireframes

## Purpose

This document turns the PRD into a concrete page structure and a first-pass layout plan. It is intentionally low fidelity: the goal is to lock down information hierarchy, page purpose, and content flow before visual design or implementation details.

## Structural Decisions

- New public writing lives under `/writing/`.
- New articles live under `/writing/<slug>/`.
- Legacy posts remain accessible through a hidden `/archive/` page.
- Existing legacy article URLs should stay alive where practical.
- Newsletter is a capability and CTA, not a first-class top-level page in v1.
- RSS remains a first-class subscription mechanism.

## Concrete Sitemap

| URL | Page | Visibility | Purpose | Primary CTA |
| --- | --- | --- | --- | --- |
| `/` | Home | Primary nav | Position Daan Horn and route visitors into writing | Read latest posts |
| `/writing/` | Writing index | Primary nav | Browse current essays and subscribe | Open an article |
| `/writing/<slug>/` | Article | Internal | Deliver long-form editorial reading experience | Read more / subscribe / contact |
| `/contact/` | Contact | Primary nav | Offer lightweight, direct ways to reach out | Email Daan |
| `/archive/` | Hidden archive | Hidden | Preserve older posts without letting them define the brand | Open legacy post |
| `/index.xml` | RSS feed | Footer / writing | Support ownership-friendly subscription | Subscribe in reader |

## Navigation Model

### Primary Navigation

- `Daan Horn` logo or wordmark linking to `/`
- `Writing`
- `Contact`

### Footer Navigation

- `LinkedIn`
- `RSS`
- `Newsletter`
- optional hidden `Archive` link or no visible archive link at all

## Route-Level Notes

### Home

- Must feel like an editorial landing page, not a post index.
- Must include a short personal introduction.
- Must include current role or background context.
- Must include the latest current posts automatically.
- Must make email and LinkedIn visible without turning them into a hard-sell CTA.

### Writing Index

- Only current writing should appear here.
- No legacy posts.
- RSS and newsletter should be easy to discover.

### Article

- Optimized for reading.
- End-of-article CTA should be soft and relationship-oriented.
- Can include newsletter signup, email, LinkedIn, and “read another post.”

### Contact

- Simple page with direct email and LinkedIn.
- No form required for v1.
- Should lightly frame the type of conversations Daan is open to.

### Archive

- No primary-nav link.
- Includes a clear archival note so visitors understand this content reflects earlier writing.
- Lists only legacy posts.

## Low-Fidelity Wireframes

### Home

#### Desktop

```text
+----------------------------------------------------------------------------------+
| Daan Horn                                             Writing         Contact     |
+----------------------------------------------------------------------------------+
|                                                                                  |
|  I help organizations modernize their tech stack and way of working so they      |
|  can stay ahead of the competition.                                              |
|                                                                                  |
|  Thoughtful writing on engineering productivity, team modernization, and AI      |
|  in software engineering.                                                        |
|                                                                                  |
+----------------------------------------------------------------------------------+
| Short Personal Intro                                                              |
|                                                                                  |
|  2-4 short paragraphs introducing Daan's perspective, current focus, and why     |
|  this site exists.                                                               |
+----------------------------------------------------------------------------------+
| Current Role / Background                                                         |
|                                                                                  |
|  Concise credibility block: current role, background, sectors, modernization     |
|  angle. Not a full CV.                                                           |
+----------------------------------------------------------------------------------+
| Latest Writing                                                                    |
|                                                                                  |
|  [Post 1 title]    short summary                          date                    |
|  [Post 2 title]    short summary                          date                    |
|  [Post 3 title]    short summary                          date                    |
|                                                                                  |
|  View all writing ->                                                             |
+----------------------------------------------------------------------------------+
| Stay In Touch                                                                     |
|                                                                                  |
|  Email | LinkedIn | RSS | Newsletter                                             |
+----------------------------------------------------------------------------------+
| Footer                                                                            |
|  Copyright / small note / optional hidden archive access                         |
+----------------------------------------------------------------------------------+
```

#### Mobile

```text
+--------------------------------------+
| Daan Horn                 Menu        |
+--------------------------------------+
| Hero statement                        |
| Supporting sentence                  |
+--------------------------------------+
| Short personal intro                 |
+--------------------------------------+
| Current role / background            |
+--------------------------------------+
| Latest writing                       |
| Post 1                               |
| Post 2                               |
| Post 3                               |
| View all writing ->                  |
+--------------------------------------+
| Email                                |
| LinkedIn                             |
| RSS                                  |
| Newsletter                           |
+--------------------------------------+
| Footer                               |
+--------------------------------------+
```

#### Home Notes

- The hero should do the strategic framing.
- The intro should humanize the site.
- The background block should reassure the right visitor.
- The latest writing block should pull visitors into the core content loop.

### Writing Index

#### Desktop

```text
+----------------------------------------------------------------------------------+
| Daan Horn                                             Writing         Contact     |
+----------------------------------------------------------------------------------+
| Writing                                                                          |
| Essays on engineering productivity, modernization, and AI in software           |
| engineering.                                                                    |
+----------------------------------------------------------------------------------+
| Filters or topic labels kept minimal or omitted in v1                           |
+----------------------------------------------------------------------------------+
| [Post 1 title]                                                                  |
| Summary / dek                                                                   |
| Date                                                                             |
+----------------------------------------------------------------------------------+
| [Post 2 title]                                                                  |
| Summary / dek                                                                   |
| Date                                                                             |
+----------------------------------------------------------------------------------+
| [Post 3 title]                                                                  |
| Summary / dek                                                                   |
| Date                                                                             |
+----------------------------------------------------------------------------------+
| Subscribe                                                                         |
| RSS | Newsletter                                                                 |
+----------------------------------------------------------------------------------+
| Footer                                                                            |
+----------------------------------------------------------------------------------+
```

#### Mobile

```text
+--------------------------------------+
| Daan Horn                 Menu        |
+--------------------------------------+
| Writing                              |
| Intro line                           |
+--------------------------------------+
| Post 1                               |
| Summary                              |
| Date                                 |
+--------------------------------------+
| Post 2                               |
| Summary                              |
| Date                                 |
+--------------------------------------+
| RSS | Newsletter                     |
+--------------------------------------+
| Footer                               |
+--------------------------------------+
```

#### Writing Notes

- Titles and summaries matter more than decoration.
- Keep the list clean and scannable.
- Avoid categories and tag clutter in v1.

### Article Page

#### Desktop

```text
+----------------------------------------------------------------------------------+
| Daan Horn                                             Writing         Contact     |
+----------------------------------------------------------------------------------+
| Article Title                                                                    |
| Summary / dek                                                                     |
| Date                                                                              |
+----------------------------------------------------------------------------------+
|                                                                                  |
|  Long-form article body                                                           |
|  Comfortable reading width                                                        |
|  Strong typography                                                                |
|                                                                                  |
|  Subheadings                                                                      |
|  Quotes / callouts if needed                                                      |
|                                                                                  |
+----------------------------------------------------------------------------------+
| Continue Reading                                                                  |
|  Another relevant post                                                            |
|  Another relevant post                                                            |
+----------------------------------------------------------------------------------+
| Stay In Touch                                                                     |
|  Newsletter | RSS | Email | LinkedIn                                             |
+----------------------------------------------------------------------------------+
| Footer                                                                            |
+----------------------------------------------------------------------------------+
```

#### Mobile

```text
+--------------------------------------+
| Daan Horn                 Menu        |
+--------------------------------------+
| Article title                        |
| Summary                              |
| Date                                 |
+--------------------------------------+
| Article body                         |
| ...                                  |
+--------------------------------------+
| Continue reading                     |
| Post link                            |
| Post link                            |
+--------------------------------------+
| Newsletter                           |
| RSS                                  |
| Email                                |
| LinkedIn                             |
+--------------------------------------+
| Footer                               |
+--------------------------------------+
```

#### Article Notes

- This page should feel calm, readable, and editorial.
- Related reading should be subtle.
- CTA should appear after the value has been delivered.

### Contact Page

#### Desktop

```text
+----------------------------------------------------------------------------------+
| Daan Horn                                             Writing         Contact     |
+----------------------------------------------------------------------------------+
| Contact                                                                          |
|                                                                                  |
|  Short paragraph: what people can contact Daan about.                            |
|                                                                                  |
|  Email:     name@example.com                                                     |
|  LinkedIn:  linkedin.com/in/daanhorn                                             |
|                                                                                  |
|  Optional short note on response expectations.                                   |
+----------------------------------------------------------------------------------+
| Footer                                                                            |
+----------------------------------------------------------------------------------+
```

#### Mobile

```text
+--------------------------------------+
| Daan Horn                 Menu        |
+--------------------------------------+
| Contact                              |
| Short intro                          |
+--------------------------------------+
| Email                                |
+--------------------------------------+
| LinkedIn                             |
+--------------------------------------+
| Footer                               |
+--------------------------------------+
```

#### Contact Notes

- This should be one of the shortest pages on the site.
- The tone should feel open and direct.

### Hidden Archive Page

#### Desktop

```text
+----------------------------------------------------------------------------------+
| Daan Horn                                                                          |
+----------------------------------------------------------------------------------+
| Archive                                                                           |
|                                                                                  |
|  Intro note: these posts are older writing kept for reference.                   |
|                                                                                  |
+----------------------------------------------------------------------------------+
| [Legacy post 1]                                                                   |
| date                                                                              |
+----------------------------------------------------------------------------------+
| [Legacy post 2]                                                                   |
| date                                                                              |
+----------------------------------------------------------------------------------+
| [Legacy post 3]                                                                   |
| date                                                                              |
+----------------------------------------------------------------------------------+
| Footer                                                                            |
+----------------------------------------------------------------------------------+
```

#### Mobile

```text
+--------------------------------------+
| Daan Horn                            |
+--------------------------------------+
| Archive note                         |
+--------------------------------------+
| Legacy post 1                        |
| Date                                 |
+--------------------------------------+
| Legacy post 2                        |
| Date                                 |
+--------------------------------------+
| Footer                               |
+--------------------------------------+
```

#### Archive Notes

- Keep this page intentionally plain.
- The purpose is preservation, not promotion.

## Content Flow Summary

### Main Flow

1. Visitor lands on home page.
2. Visitor understands the positioning.
3. Visitor sees current context and credibility.
4. Visitor opens a recent article.
5. Visitor either reads more, subscribes, or reaches out.

### Secondary Flow

1. Referral visitor lands directly on article or homepage.
2. Visitor confirms fit through intro and recent writing.
3. Visitor contacts Daan by email or LinkedIn.

## Implementation Guidance

- Build the homepage as a custom template with explicit sections.
- Build the writing index from only the current writing collection.
- Exclude legacy content from homepage queries and the main writing list.
- Create a separate archive listing page for legacy content.
- Preserve legacy post URLs where practical.
- Keep newsletter integration lightweight so the CTA can live in footer and article contexts without requiring a new page type.

## Decisions Captured Here

- Current writing and legacy archive are separate experiences.
- Navigation stays intentionally small.
- Newsletter is distributed through CTAs, not a top-level destination.
- The reading experience is more important than feature density.
