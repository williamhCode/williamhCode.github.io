import { parse } from 'yaml';
import resumeDataRaw from './resume-data.yaml?raw';

export function load() {
  return { resume: parse(resumeDataRaw) };
}
