import { siteConfig } from '$lib/config';

export const prerender = true;

export function load() {
	return { siteConfig };
}
