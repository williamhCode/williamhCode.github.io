<script lang="ts">
	// Resume page
</script>

<!-- Navigation -->
<div class="mx-auto max-w-5xl px-8 pt-8">
  <a href="/" class="inline-flex items-center text-gray-600 transition-colors hover:text-gray-900">
    <svg class="mr-2 h-5 w-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 19l-7-7m0 0l7-7m-7 7h18" />
    </svg>
    Back to Home
  </a>
</div>

<!-- Experience Section -->
<section class="mx-auto max-w-5xl px-8 py-16">
  <h2 class="mb-8 text-3xl font-bold">Experience</h2>
  <div class="space-y-8">
    <div>
      <div class="mb-2 flex items-start justify-between">
        <div>
          <h3 class="text-xl font-semibold">Frontend Developer</h3>
          <a href="https://www.instagram.com/ujin_media" class="text-gray-600 hover:text-blue-600 hover:underline" target="_blank" rel="noopener noreferrer">ÜJIN Media</a>
        </div>
        <span class="text-sm text-gray-500">July 2025 - Present</span>
      </div>
      <ul class="list-disc space-y-1 pl-5 text-gray-700">
        <li>Designed and launched custom, responsive websites using HTML, CSS, JavaScript, and modern frameworks.</li>
        <li>Collaborated cross-functionally to integrate client branding and business needs into cohesive digital experiences.</li>
        <li>Optimized website engagement by implementing Search Engine Optimization (SEO) strategies.</li>
        <li>Managed full deployment via GitLab, including custom domain configuration and DNS redirects.</li>
      </ul>
    </div>

    <div>
      <div class="mb-2 flex items-start justify-between">
        <div>
          <h3 class="text-xl font-semibold">Software Engineer</h3>
          <a href="https://www.ebti.com.tw/index.html" class="text-gray-600 hover:text-blue-600 hover:underline" target="_blank" rel="noopener noreferrer">E&B Technology Inc.</a>
        </div>
        <span class="text-sm text-gray-500">May 2024 - July 2024</span>
      </div>
      <ul class="list-disc space-y-1 pl-5 text-gray-700">
        <li>Developed full-stack web applications using Vue.js, C# ASP.NET with EF Core, and Microsoft SQL</li>
        <li>Tested airport monitoring software by generating JSON files using Python</li>
        <li>Utilized Three.js and Blender, improving lighting effects and applying texture mappings</li>
      </ul>
    </div>

    <div>
      <div class="mb-2 flex items-start justify-between">
        <div>
          <h3 class="text-xl font-semibold">Teaching Assistant</h3>
          <p class="text-gray-600">Taipei American School</p>
        </div>
        <span class="text-sm text-gray-500">Sep. 2021 - June 2022</span>
      </div>
      <ul class="list-disc space-y-1 pl-5 text-gray-700">
        <li>Taught artificial intelligence concepts including pathfinding, genetic algorithm, and neural networks</li>
        <li>Supported students with debugging/writing programs in Java and Python</li>
      </ul>
    </div>
  </div>
</section>

<!-- Projects Section -->
<section class="mx-auto max-w-5xl px-8 py-16">
  <h2 class="mb-8 text-3xl font-bold">Projects</h2>
  <div class="space-y-8">
    <div>
      <div class="mb-2">
        <h3 class="text-xl font-semibold">GUI for Neovim - Neogurt</h3>
        <a href="https://github.com/williamhCode/neogurt" class="text-sm text-blue-600 hover:underline" target="_blank">github.com/williamhCode/neogurt</a>
      </div>
      <ul class="list-disc space-y-1 pl-5 text-gray-700">
        <li>Developed an efficient and visually pleasing GUI for Neovim with C++23, WebGPU, and SDL3</li>
        <li>Designed a feature-full font renderer, supporting features like custom box drawing characters and adjustable gamma corrected blending</li>
        <li>Implemented msgpack RPC client with Boost Asio + Process for handling communication with Neovim instances</li>
        <li>Seamlessly used as a Neovim driver for alpha testers over an extended period</li>
      </ul>
    </div>

    <div>
      <div class="mb-2">
        <h3 class="text-xl font-semibold">Receipt Helper - Expense Splitting App</h3>
        <a href="https://github.com/williamhCode/receipt-helper" class="text-sm text-blue-600 hover:underline" target="_blank">github.com/williamhCode/receipt-helper</a>
      </div>
      <ul class="list-disc space-y-1 pl-5 text-gray-700">
        <li>Built full-stack expense splitting app with FastAPI, SvelteKit (Svelte 5), PostgreSQL, and Alembic migrations</li>
        <li>Built responsive frontend with TailwindCSS, with polling synchronization within users groups</li>
        <li>CI/CD deployment with Railway, with staging and production environments (currently for private use)</li>
      </ul>
    </div>

    <div>
      <div class="mb-2">
        <h3 class="text-xl font-semibold">Other Projects</h3>
      </div>
      <ul class="list-disc space-y-1 pl-5 text-gray-700">
        <li><a href="https://github.com/williamhCode/minecraft_webgpu" class="text-blue-600 hover:underline" target="_blank">Minecraft Clone in WebGPU</a>: Voxel engine with optimized triangulation, deferred shading, cascaded shadow maps, SSAO, and procedural terrain</li>
        <li><a href="https://github.com/williamhCode/Game-Jam-2022" class="text-blue-600 hover:underline" target="_blank">SIGGD Game Jam 2022</a>: Snowball shoveler game created in 48 hours with custom Python 2D graphics library</li>
        <li><a href="https://github.com/williamhCode/.dotfiles" class="text-blue-600 hover:underline" target="_blank">Dotfiles</a>: Configuration files for various programs on macOS</li>
      </ul>
    </div>
  </div>
</section>

<!-- Skills Section -->
<section class="mx-auto max-w-5xl px-8 py-16">
  <h2 class="mb-8 text-3xl font-bold">Skills</h2>
  <div class="space-y-4">
    <div>
      <h3 class="mb-2 font-semibold text-gray-800">Programming</h3>
      <p class="text-gray-700">Python, C++, JavaScript/TypeScript, C#, Java, Lua, C, MATLAB, Shell script, LaTeX</p>
    </div>
    <div>
      <h3 class="mb-2 font-semibold text-gray-800">Dev Tools</h3>
      <p class="text-gray-700">Git, Vim (Neovim), Make, CMake, VSCode, XCode</p>
    </div>
    <div>
      <h3 class="mb-2 font-semibold text-gray-800">Frameworks/Libraries</h3>
      <p class="text-gray-700">Vue, Svelte, FastAPI, WebGPU, OpenGL, NumPy, PyQt, Tensorflow/PyTorch</p>
    </div>
    <div>
      <h3 class="mb-2 font-semibold text-gray-800">Other Software</h3>
      <p class="text-gray-700">Unity</p>
    </div>
    <div>
      <h3 class="mb-2 font-semibold text-gray-800">Languages</h3>
      <p class="text-gray-700">English, Mandarin-Chinese</p>
    </div>
  </div>
</section>

<!-- Education Section -->
<section class="mx-auto max-w-5xl px-8 py-16">
  <h2 class="mb-8 text-3xl font-bold">Education</h2>
  <div>
    <div class="mb-2 flex items-start justify-between">
      <div>
        <h3 class="text-xl font-semibold">Purdue University</h3>
        <p class="text-gray-600">Bachelor of Science in Computer Science, GPA: 3.5/4.0</p>
      </div>
      <span class="text-sm text-gray-500">Expected May 2026</span>
    </div>
    <div class="mt-4">
      <h4 class="mb-2 font-semibold text-gray-800">Relevant Coursework</h4>
      <ul class="list-disc space-y-1 pl-5 text-gray-700">
        <li><span class="font-medium">Computer Science:</span> Software Engineering, Computer Architecture, Data Structures and Algorithms, Analysis Of Algorithms, Object-Oriented Programming, Fundamentals of Computer Graphics</li>
        <li><span class="font-medium">Mathematics:</span> Linear Algebra, Numerical Methods, Multivariate Calculus</li>
      </ul>
    </div>
  </div>
</section>
