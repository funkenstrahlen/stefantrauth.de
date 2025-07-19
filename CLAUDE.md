# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is Stefan Trauth's personal website - a static HTML site showcasing his work as an Apple Developer and Podcaster. The site is written in German and includes information about his apps, blog, and podcast.

## Architecture

- **Static HTML Site**: Simple HTML/CSS/JS website with no build process
- **Site Structure**: All website files are in the `site/` directory
- **Styling**: Uses Material Design Components (MDC) for layout grid system
- **Fonts**: Google Fonts are stored locally in `site/fonts/` directory
- **Dynamic Email**: JavaScript fetches a temporary email address from `/meltmail` endpoint

## Key Files

- `site/index.html` - Main landing page with personal info and skills
- `site/css/bundle.css` - Compiled CSS including Material Design Components
- `site/impressum.html` - Legal imprint page (German requirement)
- `site/*-privacy-policy.html` - Privacy policies for various apps
- `Makefile` - Contains deployment command

## Development Commands

### Deploy to Production
```bash
make publish
```
This syncs the `site/` directory to the production server using rsync, excluding the `meltmail` directory.

## Content Areas

The main page includes:
- Personal introduction and photo
- Skills sections (UI/UX Designer, Apple Developer, Blogger, Podcaster)
- Contact form with dynamic email generation
- Links to external content (App Store, blog, podcast, Mastodon)

## Important Notes

- Site is completely static - no build tools or package managers
- Email contact uses dynamic generation via `/meltmail` endpoint (server-side)
- All external fonts are self-hosted for performance
- Site follows German legal requirements (Impressum page)