# Website Refresh PRD

## Document Status

- Status: Draft
- Date: 2026-03-29
- Product: `daanhorn.nl`
- Primary brand on site: `Daan Horn`
- Related future brand: `Mouflon IT`

## Summary

This project refreshes `daanhorn.nl` into a modern, minimal, English-language personal website for Daan Horn. The site should position Daan as a thoughtful, credible expert in modernization, especially across engineering productivity, team and workflow modernization, and AI in software engineering.

The new site should not behave like a generic freelancer brochure. It should function as an editorial personal site where long-form writing is the primary trust-building mechanism and contact is a soft next step rather than the dominant CTA.

## Problem Statement

The current website is a legacy personal blog with dated structure, dated visual language, and weak positioning. It under-represents the current professional profile visible elsewhere, especially on LinkedIn, where Daan already appears as a more senior, credible, and current voice.

The existing homepage is effectively a generic blog index. It does not quickly communicate what Daan helps organizations do, what he wants to be known for, or why the right visitor should keep reading.

## Product Vision

Create a website that makes the right visitor think, within two minutes, “this is exactly the kind of person we need.”

The site should feel like the digital home of a senior engineer and modernization partner who thinks clearly, writes clearly, and helps organizations improve both their technology and the way they work.

## Goals

- Strengthen Daan Horn’s personal brand.
- Position Daan as a modernization expert rather than a generic software freelancer.
- Make long-form writing the center of gravity of the site.
- Create a homepage that communicates point of view, credibility, and current relevance.
- Support soft inbound contact through direct email and LinkedIn.
- Preserve ownership-friendly publishing and distribution with a static site, RSS, and newsletter support.
- Keep the site simple to maintain on the current hosting model.

## Non-Goals

- Building a separate corporate site for `mouflon.it` in this phase.
- Creating a high-friction lead generation funnel with forms, gated downloads, or aggressive sales messaging.
- Building a large multi-section personal website with many top-level pages.
- Re-centering old blog posts as the primary public narrative.
- Introducing a complex CMS or dynamic application architecture unless later requirements justify it.

## Primary Audiences

### Scale-Ups

Organizations that are growing quickly and need stronger engineering productivity, clearer ways of working, and pragmatic modernization guidance.

### Government And Public Sector

Organizations that value credibility, clarity, and durable modernization over hype. They are likely to respond to thoughtful writing, clear positioning, and a professional tone.

### Existing Network And Referrals

People who already know Daan by reputation, previous work, conference interactions, or online presence and want a site that confirms expertise quickly.

## Target Perception

Visitors should leave with the impression that Daan is:

- technically strong,
- thoughtful rather than noisy,
- current and credible,
- able to improve both software systems and engineering ways of working,
- someone worth following even before engaging him.

## Positioning

### Core Positioning Statement

Daan Horn helps organizations modernize their tech stack and way of working so they can stay ahead of the competition.

### Interpreted Brand Positioning

The site should present Daan as a deliberate mix of hands-on engineer, technical leader, and modernization advisor.

### Content Pillars

- Engineering productivity
- Team and workflow modernization
- AI in software engineering

### Messaging Constraints

- AI should appear as a writing theme, not the main homepage headline.
- Current role and background should support credibility, but the site should not read like a CV.
- The tone should be thoughtful and credible, not flashy, salesy, or self-congratulatory.

## Product Strategy

The site should be authority-first. Writing does the heavy lifting. Contact paths should exist, but they should feel natural and low-pressure.

The ideal visitor journey is:

1. Land on the homepage.
2. Immediately understand the thesis of the site.
3. See enough current background to trust the author.
4. Read one or more essays.
5. Decide Daan is relevant for their context.
6. Reach out by email or LinkedIn when the fit is right.

## Information Architecture

### Primary Navigation

- Home
- Writing
- Contact

### Secondary Navigation Or Footer Links

- LinkedIn
- RSS
- Newsletter
- Hidden archive link if needed in footer only, or omitted from visible nav entirely

### Hidden Or De-Emphasized Content

- Legacy archive page for older posts
- Any old taxonomy pages such as tags or categories should be removed from primary navigation and de-emphasized

## Page Requirements

### Home

The homepage is a strategic landing page, not a default article index.

### Home Goals

- Communicate the positioning quickly.
- Establish credibility with concise current-role or background context.
- Pull visitors into recent writing.
- Offer a soft path to contact.

### Required Home Sections

- Hero section with a concise positioning statement
- Short personal introduction section
- Current role or background credibility block
- Latest writing section populated automatically from recent posts
- Soft CTA section for email and LinkedIn contact

### Home Content Requirements

- The hero should describe what Daan helps organizations do in plain English.
- The intro should sound personal and current, not like recycled resume copy.
- The background block should emphasize relevance and present-day credibility.
- The latest writing section should be automated, not manually curated.
- The homepage should not feel crowded with multiple proof grids, logos, or service cards.

### Home UX Requirements

- The primary action should be to continue reading.
- Contact should be visible but not dominant.
- The page should work equally well for a referral visitor and a cold visitor.

### Writing Index

The writing page is the main public library of current thinking.

### Writing Goals

- Present recent essays clearly.
- Reinforce the site’s themes through article titles, summaries, and structure.
- Encourage browsing without clutter.

### Writing Requirements

- Show posts in reverse chronological order.
- Include title, publish date, and short summary or dek.
- Support RSS discovery prominently.
- Support newsletter signup entry points without overwhelming the reading experience.
- Avoid visual noise from legacy taxonomies unless they become strategically useful later.

### Article Template

Individual articles should feel editorial, readable, and calm.

### Article Requirements

- Strong typography and comfortable reading width
- Clear title and date
- Optional summary or introductory deck
- Reading experience optimized for long-form text
- Subtle byline or author context if helpful
- Soft end-of-article CTA for newsletter, email, or more writing
- RSS and newsletter should support ongoing readership outside social platforms

### Contact Page

The contact page should be short and direct.

### Contact Requirements

- Direct email link
- LinkedIn link
- Brief framing of what people can reach out about
- Tone should feel open and professional, not transactional

### Contact Non-Requirements

- No heavy lead form is required for launch
- No scheduling workflow is required for launch

### Hidden Archive Page

The archive exists to preserve old content without letting it define the new brand.

### Archive Requirements

- Older posts remain accessible from a hidden or de-emphasized archive page
- The archive should not appear in the primary navigation
- Archived content should not be promoted on the homepage or main writing index
- Existing URLs should ideally remain stable where practical

## Content Model

### New Posts

Each new post should support at minimum:

- title
- slug
- publish date
- summary or dek
- body content
- optional updated date
- optional theme or topic metadata

### Legacy Posts

Legacy posts should be marked or organized separately so the site can distinguish between current writing and archived writing.

### Homepage Data Needs

The homepage should be able to automatically query and render the latest current posts without manually editing templates for each new article.

## Design Direction

### Visual Principles

- Modern and minimal
- Thoughtful and credible
- Editorial rather than startup-marketing heavy
- Distinct enough to avoid a generic minimalist tech blog feel

### Layout Principles

- Strong typography should do most of the visual work
- Use restraint in section count and decoration
- Keep whitespace intentional
- Avoid default blog-theme aesthetics

### Tone And Voice

- Clear
- confident
- thoughtful
- grounded
- expert without sounding performative

## UX Principles

- Prioritize reading over clicking.
- Keep navigation shallow and obvious.
- Make key context available quickly.
- Reduce friction for returning readers.
- Let the content create conversion momentum.

## Functional Requirements

- Responsive design for desktop and mobile
- Clear navigation to Home, Writing, and Contact
- Automatic rendering of latest posts on the homepage
- RSS feed for writing
- Newsletter signup capability
- Privacy-friendly analytics
- Easy linking to LinkedIn and email
- Archive routing that keeps older posts accessible but hidden from the main path

## Non-Functional Requirements

- Fast page loads consistent with a static site
- Accessible typography and contrast
- Simple maintenance workflow for publishing Markdown-based content
- Hosting compatibility with current DigitalOcean deployment model
- SEO-friendly HTML and metadata for articles and landing pages

## SEO And Discovery Requirements

- Home page metadata should reflect the modernization positioning, not just “software blog” language.
- Each article should support unique title and description metadata.
- The writing section should be crawlable and easy to understand.
- The archive should remain accessible without becoming the main SEO focus.
- RSS should be promoted as a first-class subscription mechanism.

## Analytics And Privacy

The site should use privacy-friendly analytics. The exact implementation can be selected later, but the product requirement is:

- no invasive tracking patterns,
- no dependence on heavy third-party marketing platforms,
- sufficient insight into page views, traffic sources, and writing performance.

Examples that fit the intent include self-hosted or privacy-focused analytics tools.

## Newsletter Requirements

The site should support newsletter subscription as a lightweight ongoing relationship channel.

### Newsletter Scope For Launch

- Display newsletter signup entry points in appropriate places
- Keep the signup flow simple
- Avoid turning the site into a newsletter-first product

### Newsletter Open Decision

- Provider is still to be chosen
- The implementation should fit the site’s minimal and ownership-friendly philosophy

## Technical Recommendation

Keep the current static-site and DigitalOcean hosting model for this phase.

### Why This Fits

- The site is content-led
- The conversion model is lightweight
- Performance and simplicity matter
- Maintenance cost should stay low

### When To Reconsider

Revisit the stack only if future requirements include:

- complex CMS editing workflows,
- advanced newsletter segmentation,
- integrated CRM behavior,
- dynamic personalization,
- member-only content,
- complex forms or booking systems.

## Launch Scope

### In Scope

- New homepage
- New writing index
- New article template
- New contact page
- Hidden archive page for legacy posts
- Updated site branding and copy
- RSS support
- Newsletter entry points
- Privacy-friendly analytics integration

### Out Of Scope

- Separate `mouflon.it` company website
- Large portfolio or case study system unless added later
- Speaking page as a top-level navigation item
- Comment system
- Complex taxonomy browsing experience

## Success Metrics

Because the primary goal is stronger personal brand, success should be evaluated with a mix of qualitative and lightweight quantitative signals.

### Qualitative Signals

- Visitors or referrals mention specific essays when contacting Daan
- The site feels current and aligned with Daan’s actual professional identity
- The homepage quickly communicates fit to the right audience

### Quantitative Signals

- Growth in traffic to current essays
- RSS subscriptions
- Newsletter subscriptions
- Direct contact from relevant organizations or referrals
- Time spent on long-form articles, if available from the chosen analytics setup

## Risks And Watchouts

- The site could become too sparse and fail to establish enough credibility.
- The site could become too service-oriented and lose the editorial quality that makes it differentiated.
- “Modern and minimal” could become generic if typography, spacing, and copy hierarchy are not handled intentionally.
- The archive could leak too much outdated framing into the main experience if not clearly separated.

## Open Decisions

- Which privacy-friendly analytics provider to use
- Which newsletter provider to use
- Whether to include a hidden archive footer link or make the archive only directly addressable
- Whether selected future proof points such as speaking should appear on the homepage once content design starts

## Implementation Notes

- The homepage should be implemented as a custom landing page template rather than a default post loop.
- The writing index should separate current writing from legacy archive content.
- Old categories, tags, and archive navigation from the current theme should be removed or heavily de-emphasized.
- Content migration should preserve old posts while clearly marking them as archival.

## Suggested Next Steps

1. Review and tighten homepage messaging.
2. Turn this PRD into a sitemap and wireframe set.
3. Decide analytics and newsletter providers.
4. Draft the first batch of new homepage and contact copy.
5. Start implementation in the Hugo codebase.
