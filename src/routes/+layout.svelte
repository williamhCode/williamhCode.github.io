<script lang="ts">
	import './layout.css';
	import favicon from '$lib/assets/favicon.svg';

	let { children, data } = $props();
	const siteConfig = $derived(data.siteConfig);
</script>

<svelte:head>
	<title>{siteConfig.site.title}</title>
	<meta name="description" content={siteConfig.site.description} />
	<meta name="keywords" content={siteConfig.site.keywords.join(', ')} />
	<meta name="author" content={siteConfig.site.author} />

	<!-- Open Graph / Facebook -->
	<meta property="og:type" content="website" />
	<meta property="og:url" content={siteConfig.site.url} />
	<meta property="og:title" content={siteConfig.site.title} />
	<meta property="og:description" content={siteConfig.site.description} />
	<meta property="og:image" content={`${siteConfig.site.url}${siteConfig.social.ogImage}`} />

	<!-- Twitter -->
	<meta property="twitter:card" content="summary_large_image" />
	<meta property="twitter:url" content={siteConfig.site.url} />
	<meta property="twitter:title" content={siteConfig.site.title} />
	<meta property="twitter:description" content={siteConfig.site.description} />
	<meta property="twitter:image" content={`${siteConfig.site.url}${siteConfig.social.ogImage}`} />

	<link rel="icon" href={favicon} />
</svelte:head>
{@render children()}
