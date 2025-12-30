# Project Name

A modern web application built with SvelteKit, TypeScript, and Tailwind CSS.

## Features

- **SvelteKit** - Fast, modern web framework
- **TypeScript** - Type-safe development
- **Tailwind CSS v4** - Utility-first styling
- **Static Site Generation** - Pre-rendered for optimal performance
- **GitLab CI/CD** - Automated deployment to GitLab Pages
- **Prettier** - Consistent code formatting
- **YAML Configuration** - Centralized site metadata and settings

## Prerequisites

- Node.js 20.x or higher
- npm or pnpm

## Getting Started

### 1. Install Dependencies

```bash
npm install
```

### 2. Configure Your Site

Edit `site.config.yaml` with your project details:

```yaml
site:
  title: "Your Site Title"
  description: "Your site description"
  author: "Your Name"
  url: "https://yoursite.com"
  keywords:
    - your
    - keywords

api:
  url: "https://api.yoursite.com"

social:
  ogImage: "/og-image.jpg"
  twitterHandle: "@yourhandle"
```

This config controls:
- SEO meta tags (title, description, keywords)
- Open Graph tags for social sharing
- API endpoint URL
- Favicon and social images

### 3. Environment Setup (Optional)

Copy the example environment file for any environment-specific overrides:

```bash
cp .env.example .env
```

### 4. Development

Start the development server:

```bash
npm run dev
```

Open [http://localhost:5173](http://localhost:5173) in your browser.

## Available Scripts

```bash
npm run dev          # Start development server
npm run build        # Build for production
npm run preview      # Preview production build locally
npm run check        # Run type checking
npm run check:watch  # Run type checking in watch mode
npm run format       # Format code with Prettier
npm run lint         # Check code formatting
```

## Using the Site Config

The site configuration is automatically loaded and available in all routes:

```svelte
<script lang="ts">
  let { data } = $props();
  const { siteConfig } = data;
</script>

<h1>{siteConfig.site.title}</h1>

<!-- Access API URL -->
<p>API: {siteConfig.api.url}</p>
```

You can also import it directly in server-side code:

```typescript
import { siteConfig } from '$lib/config';

console.log(siteConfig.api.url);
```

## Building for Production

Create an optimized production build:

```bash
npm run build
```

The static site will be generated in the `build/` directory.

To test the production build locally:

```bash
npm run preview
```

## Deployment

This project is configured for **GitLab Pages** deployment via GitLab CI/CD.

### Automatic Deployment

Push to the default branch (usually `main` or `master`) to trigger automatic deployment:

```bash
git add .
git commit -m "Your commit message"
git push origin main
```

The site will be built and deployed automatically via the `.gitlab-ci.yml` pipeline.

### Manual Deployment

You can also deploy manually to other platforms:

- **Vercel**: `vercel deploy`
- **Netlify**: `netlify deploy`
- **Cloudflare Pages**: Connect your repo in the dashboard

## Project Structure

```
├── src/
│   ├── lib/
│   │   ├── config.ts        # YAML config loader
│   │   └── index.ts         # Reusable utilities
│   ├── routes/
│   │   ├── +layout.svelte   # Root layout with meta tags
│   │   ├── +layout.server.ts # Load site config
│   │   └── +page.svelte     # Homepage
│   ├── app.html             # HTML template
│   ├── app.css              # Global styles
│   └── app.d.ts             # TypeScript declarations
├── static/                  # Static assets (copied to build)
├── site.config.yaml         # Site configuration (EDIT THIS!)
├── .env.example             # Environment variables template
├── .gitlab-ci.yml           # GitLab CI/CD configuration
├── svelte.config.js         # SvelteKit configuration
├── tsconfig.json            # TypeScript configuration
└── vite.config.ts           # Vite configuration
```

## Customization

### Update Site Metadata

All site metadata is in `site.config.yaml`. Update this file to change:
- Page title and description
- SEO keywords
- Open Graph / social sharing tags
- API URLs
- Author info

### Add a Favicon and OG Image

1. Add `favicon.png` to `static/`
2. Add `og-image.jpg` to `static/` (recommended 1200x630px)
3. Update paths in `site.config.yaml` if needed

### Styling

- Global styles: `src/app.css`
- Route-specific styles: `src/routes/layout.css`
- Component styles: Use Tailwind classes or `<style>` blocks in `.svelte` files

## Learn More

- [SvelteKit Documentation](https://kit.svelte.dev/docs)
- [Svelte Documentation](https://svelte.dev/docs)
- [Tailwind CSS Documentation](https://tailwindcss.com/docs)
- [TypeScript Documentation](https://www.typescriptlang.org/docs)

## License

[Your License Here]
