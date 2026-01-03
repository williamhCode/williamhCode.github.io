import { readFileSync } from 'fs';
import yaml from 'js-yaml';
import { join } from 'path';

export interface SiteConfig {
	site: {
		title: string;
		description: string;
		author: string;
		url: string;
		keywords: string[];
	};
	social: {
		ogImage: string;
	};
	favicon: string;
}

let cachedConfig: SiteConfig | null = null;

export function loadSiteConfig(): SiteConfig {
	if (cachedConfig) {
		return cachedConfig;
	}

	const configPath = join(process.cwd(), 'site.config.yaml');
	const fileContents = readFileSync(configPath, 'utf8');
	cachedConfig = yaml.load(fileContents) as SiteConfig;

	return cachedConfig;
}

export const siteConfig = loadSiteConfig();
