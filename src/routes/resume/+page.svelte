<script lang="ts">
	import './resume.css';

	let { data } = $props();
  const resume = $derived(data.resume);

	function downloadPDF() {
		window.print();
	}
</script>

<svelte:head>
	<title>William Hou - Resume</title>
</svelte:head>

<!-- Navigation -->
<div class="nav">
	<div class="nav-content">
		<a href="/" class="nav-link">
			<svg fill="none" stroke="currentColor" viewBox="0 0 24 24">
				<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 19l-7-7m0 0l7-7m-7 7h18" />
			</svg>
			Back to Home
		</a>
		<button onclick={downloadPDF} class="download-btn">
			<svg fill="none" stroke="currentColor" viewBox="0 0 24 24">
				<path
					stroke-linecap="round"
					stroke-linejoin="round"
					stroke-width="2"
					d="M12 10v6m0 0l-3-3m3 3l3-3m2 8H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"
				/>
			</svg>
			Download PDF
		</button>
	</div>
</div>

<div class="resume-wrapper">
	<div class="resume-container">
		<div id="resume">
			<!-- Header -->
			<div class="header">
				<h1 class="header-name">{resume.header.name}</h1>
				<div class="header-intro">
					<p class="header-title">{resume.header.title}</p>
					<p class="summary-text">
						{resume.header.summary}
					</p>
				</div>
			</div>

			<!-- Two Column Layout -->
			<div class="two-columns">
				<!-- Left Column (Wide) -->
				<div>
					<!-- Experience -->
					<div class="section">
						<div class="section-title">Experience</div>
						<div class="section-content">
							{#each resume.experience as exp}
								<div class="item">
									<div class="item-header">
										<h3 class="item-title">{exp.title}</h3>
										<p class="item-date">{exp.date}</p>
									</div>
									{#if exp.url}
										<a href={exp.url} class="item-company" target="_blank">{exp.company}</a>
									{:else}
										<p class="item-company">{exp.company}</p>
									{/if}
									<ul class="item-list">
										{#each exp.bullets as bullet}
											<li>• {bullet}</li>
										{/each}
									</ul>
								</div>
							{/each}
						</div>
					</div>

					<!-- Projects -->
					<div class="section">
						<div class="section-title">Projects</div>
						<div class="section-content">
							{#each resume.projects as project}
								<div class="item">
									<div class="item-header">
										<h3 class="item-title">{project.title}</h3>
										<p class="item-date">{project.date}</p>
									</div>
									<a href={project.url} class="item-link" target="_blank">{project.displayUrl}</a>
									<ul class="item-list">
										{#each project.bullets as bullet}
											<li>• {bullet}</li>
										{/each}
									</ul>
								</div>
							{/each}

							<div class="item">
								<h3 class="item-title">Additional Projects</h3>
								<ul class="item-list">
									{#each resume.additionalProjects as project}
										<li>
											• <a href={project.url} class="item-link" target="_blank">{project.title}</a>: {project.description}
										</li>
									{/each}
								</ul>
							</div>
						</div>
					</div>
				</div>

				<!-- Right Column (Narrow) -->
				<div>
					<!-- Contact -->
					<div class="section">
						<div class="section-title">Contact</div>
						<div class="contact-list">
							{#each resume.contact as contact}
								<div class="contact-item">
									{#if contact.icon === 'email'}
										<svg class="contact-icon" fill="currentColor" viewBox="0 0 20 20">
											<path d="M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884z" />
											<path d="M18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z" />
										</svg>
									{:else if contact.icon === 'location'}
										<svg class="contact-icon" fill="currentColor" viewBox="0 0 20 20">
											<path
												fill-rule="evenodd"
												d="M5.05 4.05a7 7 0 119.9 9.9L10 18.9l-4.95-4.95a7 7 0 010-9.9zM10 11a2 2 0 100-4 2 2 0 000 4z"
												clip-rule="evenodd"
											/>
										</svg>
									{:else if contact.icon === 'phone'}
										<svg class="contact-icon" fill="currentColor" viewBox="0 0 20 20">
											<path
												d="M2 3a1 1 0 011-1h2.153a1 1 0 01.986.836l.74 4.435a1 1 0 01-.54 1.06l-1.548.773a11.037 11.037 0 006.105 6.105l.774-1.548a1 1 0 011.059-.54l4.435.74a1 1 0 01.836.986V17a1 1 0 01-1 1h-2C7.82 18 2 12.18 2 5V3z"
											/>
										</svg>
									{:else if contact.icon === 'link'}
										<svg class="contact-icon" fill="currentColor" viewBox="0 0 20 20">
											<path
												fill-rule="evenodd"
												d="M12.586 4.586a2 2 0 112.828 2.828l-3 3a2 2 0 01-2.828 0 1 1 0 00-1.414 1.414 4 4 0 005.656 0l3-3a4 4 0 00-5.656-5.656l-1.5 1.5a1 1 0 101.414 1.414l1.5-1.5zm-5 5a2 2 0 012.828 0 1 1 0 101.414-1.414 4 4 0 00-5.656 0l-3 3a4 4 0 105.656 5.656l1.5-1.5a1 1 0 10-1.414-1.414l-1.5 1.5a2 2 0 11-2.828-2.828l3-3z"
												clip-rule="evenodd"
											/>
										</svg>
									{/if}
									{#if contact.url}
										<a href={contact.url} class="contact-link" target="_blank">{contact.text}</a>
									{:else}
										<span>{contact.text}</span>
									{/if}
								</div>
							{/each}
						</div>
					</div>

					<!-- Education -->
					<div class="section">
						<div class="section-title">Education</div>
						<div>
							<p class="education-degree">{resume.education.university}</p>
							<p class="education-degree">{resume.education.degree}</p>
              <p class="education-info">{resume.education.location}</p>
              <p class="education-info">{resume.education.graduation}</p>
							<p class="education-gpa">{resume.education.gpa}</p>
						</div>
					</div>

					<!-- Skills -->
					<div class="section">
						<div class="section-title">Skills</div>
						<div class="skills-list">
							{#each resume.skills as skill}
								<div class="skill-item">
									<span class="skill-category">{skill.category}:</span>
									<span class="skill-list-text">{skill.items}</span>
								</div>
							{/each}
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
