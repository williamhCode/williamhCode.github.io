<script lang="ts">
  import './resume.css';

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
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 10v6m0 0l-3-3m3 3l3-3m2 8H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
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
        <h1 class="header-name">William Hou</h1>
        <div class="header-intro">
          <p class="header-title">Software Engineer</p>
          <p class="summary-text">
            Full-stack developer and graphics programming enthusiast with expertise in building modern web applications and high-performance graphics engines. Proficient in multiple programming languages and frameworks.
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
              <div class="item">
                <div class="item-header">
                  <h3 class="item-title">Frontend Developer</h3>
                  <p class="item-date">July 2025 - Present</p>
                </div>
                <a href="https://www.instagram.com/ujin_media" class="item-company" target="_blank">ÜJIN Media / Remote</a>
                <ul class="item-list">
                  <li>• Designed and launched custom, responsive websites using HTML, CSS, JavaScript, and modern frameworks.</li>
                  <li>• Collaborated cross-functionally to integrate client branding and business needs into cohesive digital experiences.</li>
                  <li>• Optimized website engagement by implementing Search Engine Optimization (SEO) strategies.</li>
                  <li>• Managed full deployment via GitLab, including custom domain configuration and DNS redirects.</li>
                </ul>
              </div>

              <div class="item">
                <div class="item-header">
                  <h3 class="item-title">Software Engineer</h3>
                  <p class="item-date">May 2024 - July 2024</p>
                </div>
                <a href="https://www.ebti.com.tw/index.html" class="item-company" target="_blank">E&B Technology Inc. / Taipei, Taiwan</a>
                <ul class="item-list">
                  <li>• Developed full-stack web applications using Vue.js, C# ASP.NET with EF Core, and Microsoft SQL</li>
                  <li>• Tested airport monitoring software by generating JSON files using Python</li>
                  <li>• Utilized Three.js and Blender, improving lighting effects and applying texture mappings</li>
                </ul>
              </div>

              <div class="item">
                <div class="item-header">
                  <h3 class="item-title">Teaching Assistant</h3>
                  <p class="item-date">Sep. 2021 - June 2022</p>
                </div>
                <p class="item-company">Taipei American School / Taipei, Taiwan</p>
                <ul class="item-list">
                  <li>• Taught artificial intelligence concepts including pathfinding, genetic algorithm, and neural networks</li>
                  <li>• Supported students with debugging/writing programs in Java and Python</li>
                </ul>
              </div>
            </div>
          </div>

          <!-- Projects -->
          <div class="section">
            <div class="section-title">Projects</div>
            <div class="section-content">
              <div class="item">
                <div class="item-header">
                  <h3 class="item-title">Neogurt - GUI for Neovim</h3>
                  <p class="item-date">Jan 2024 - Present</p>
                </div>
                <a href="https://github.com/williamhCode/neogurt" class="item-link" target="_blank">github.com/williamhCode/neogurt</a>
                <ul class="item-list">
                  <li>• Developed an efficient and visually pleasing GUI for Neovim with C++23, WebGPU, and SDL3</li>
                  <li>• Designed a feature-full font renderer with custom box drawing and gamma corrected blending</li>
                  <li>• Implemented msgpack RPC client with Boost Asio for Neovim communication</li>
                </ul>
              </div>

              <div class="item">
                <div class="item-header">
                  <h3 class="item-title">Receipt Helper - Expense Splitting App</h3>
                  <p class="item-date">Aug 2024 - Present</p>
                </div>
                <a href="https://github.com/williamhCode/receipt-helper" class="item-link" target="_blank">github.com/williamhCode/receipt-helper</a>
                <ul class="item-list">
                  <li>• Built full-stack app with FastAPI, SvelteKit, PostgreSQL, and Alembic migrations</li>
                  <li>• Implemented responsive frontend with TailwindCSS and real-time synchronization</li>
                  <li>• Deployed with CI/CD pipeline using Railway with staging and production environments</li>
                </ul>
              </div>

              <div class="item">
                <h3 class="item-title">Additional Projects</h3>
                <ul class="item-list">
                  <li>• <a href="https://github.com/williamhCode/minecraft_webgpu" class="item-link" target="_blank">Minecraft Clone in WebGPU</a>: Voxel engine with advanced rendering techniques</li>
                  <li>• <a href="https://github.com/williamhCode/Game-Jam-2022" class="item-link" target="_blank">SIGGD Game Jam 2022</a>: 48-hour game jam project with custom Python 2D graphics library</li>
                  <li>• <a href="https://github.com/williamhCode/.dotfiles" class="item-link" target="_blank">Dotfiles</a>: Configuration files for various programs on macOS</li>
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
              <div class="contact-item">
                <svg class="contact-icon" fill="currentColor" viewBox="0 0 20 20">
                  <path d="M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884z"/>
                  <path d="M18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z"/>
                </svg>
                <span>williamh.coding@gmail.com</span>
              </div>
              <div class="contact-item">
                <svg class="contact-icon" fill="currentColor" viewBox="0 0 20 20">
                  <path fill-rule="evenodd" d="M5.05 4.05a7 7 0 119.9 9.9L10 18.9l-4.95-4.95a7 7 0 010-9.9zM10 11a2 2 0 100-4 2 2 0 000 4z" clip-rule="evenodd"/>
                </svg>
                <span>West Lafayette, IN</span>
              </div>
              <div class="contact-item">
                <svg class="contact-icon" fill="currentColor" viewBox="0 0 20 20">
                  <path d="M2 3a1 1 0 011-1h2.153a1 1 0 01.986.836l.74 4.435a1 1 0 01-.54 1.06l-1.548.773a11.037 11.037 0 006.105 6.105l.774-1.548a1 1 0 011.059-.54l4.435.74a1 1 0 01.836.986V17a1 1 0 01-1 1h-2C7.82 18 2 12.18 2 5V3z"/>
                </svg>
                <span>765-337-9144</span>
              </div>
              <div class="contact-item">
                <svg class="contact-icon" fill="currentColor" viewBox="0 0 20 20">
                  <path fill-rule="evenodd" d="M12.586 4.586a2 2 0 112.828 2.828l-3 3a2 2 0 01-2.828 0 1 1 0 00-1.414 1.414 4 4 0 005.656 0l3-3a4 4 0 00-5.656-5.656l-1.5 1.5a1 1 0 101.414 1.414l1.5-1.5zm-5 5a2 2 0 012.828 0 1 1 0 101.414-1.414 4 4 0 00-5.656 0l-3 3a4 4 0 105.656 5.656l1.5-1.5a1 1 0 10-1.414-1.414l-1.5 1.5a2 2 0 11-2.828-2.828l3-3z" clip-rule="evenodd"/>
                </svg>
                <a href="https://williamhcode.github.io/" class="contact-link" target="_blank">williamhcode.github.io</a>
              </div>
            </div>
          </div>

          <!-- Education -->
          <div class="section">
            <div class="section-title">Education</div>
            <div>
              <p class="education-degree">Purdue University</p>
              <p class="education-degree">B.S. in Computer Science</p>
              <p class="education-info">West Lafayette, IN</p>
              <p class="education-info">Expected May 2026</p>
              <p class="education-gpa">GPA: 3.5/4.0</p>
            </div>
          </div>

          <!-- Skills -->
          <div class="section">
            <div class="section-title">Skills</div>
            <div class="skills-list">
              <div class="skill-item">
                <span class="skill-category">Programming:</span>
                <span class="skill-list-text">Python, C++, HTML, CSS, JavaScript, TypeScript, C#, Java, Lua, C, Shell, LaTeX</span>
              </div>
              <div class="skill-item">
                <span class="skill-category">Dev Tools:</span>
                <span class="skill-list-text">Git, Make, CMake, Vim (Neovim), VSCode, XCode</span>
              </div>
              <div class="skill-item">
                <span class="skill-category">Frameworks/Libraries:</span>
                <span class="skill-list-text">Vue, Svelte, FastAPI, WebGPU, OpenGL, NumPy, PyQt, Tensorflow/PyTorch</span>
              </div>
              <div class="skill-item">
                <span class="skill-category">Other Software:</span>
                <span class="skill-list-text">Unity</span>
              </div>
              <div class="skill-item">
                <span class="skill-category">Languages:</span>
                <span class="skill-list-text">English, Mandarin-Chinese</span>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
</div>
