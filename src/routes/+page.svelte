<script lang="ts">
</script>

<section class="m-auto flex min-h-screen max-w-7xl flex-col items-center justify-center gap-10 md:flex-row md:justify-evenly md:gap-0">
  <!-- Profile Image -->
  <img src="/assets/me.webp" alt="William Hou" class="h-64 w-64 rounded-full border-6 border-gray-300 object-cover md:order-2 md:h-96 md:w-96" />

  <!-- Hero Content -->
  <div class="text-center md:order-1 md:text-left">
    <h1 class="mb-2 font-bold text-5xl md:text-6xl">William Hou</h1>
    <h2 class="mb-3 text-gray-600 text-2xl md:text-3xl">Software Engineer</h2>

    <!-- Social Links -->
    <div class="mb-3 flex gap-1 justify-center md:justify-start">
      <a
        href="https://github.com/williamhCode"
        target="_blank"
        rel="noopener noreferrer"
        aria-label="GitHub Profile"
      >
        <img src="/assets/github-icon.svg" alt="GitHub" class="h-10 w-10" />
      </a>
      <a
        href="https://www.linkedin.com/in/william-hou-5899a2248/"
        target="_blank"
        rel="noopener noreferrer"
        aria-label="LinkedIn Profile"
      >
        <img src="/assets/linkedin-icon.svg" alt="LinkedIn" class="h-10 w-10" />
      </a>
    </div>

    <p class="mb-6 text-lg text-gray-700">
      Full-stack ready ✅<br />Graphics programming enthusiast 🚀
    </p>

    <a href="/resume" class="inline-block rounded-lg bg-gray-900 px-6 py-3 font-medium text-white transition-colors hover:bg-gray-800">
      View Resume
    </a>
  </div>
</section>

<!-- Projects Section -->
<section class="mx-auto max-w-7xl px-8 py-16">
  <h2 class="mb-12 text-center text-5xl font-bold">PROJECTS</h2>

  <div class="mx-auto grid max-w-fit grid-cols-1 gap-8 sm:grid-cols-2 lg:grid-cols-4">
    <!-- Neogurt -->
    <a href="https://github.com/williamhCode/neogurt" target="_blank" class="w-full max-w-xs text-center transition-transform hover:scale-105">
      <div class="mb-4 aspect-square overflow-hidden rounded-3xl bg-gray-200">
        <img src="/assets/neogurt.webp" alt="Neogurt" class="h-full w-full object-cover" />
      </div>
      <h3 class="mb-2 text-xl font-semibold">Neogurt</h3>
      <p class="text-gray-600">Efficient GUI for Neovim</p>
    </a>

    <!-- Receipt Helper -->
    <a href="https://github.com/williamhCode/receipt-helper" target="_blank" class="w-full max-w-xs text-center transition-transform hover:scale-105">
      <div class="mb-4 aspect-square overflow-hidden rounded-3xl bg-gradient-to-br from-blue-200 to-cyan-200">
        <!-- Placeholder for project image -->
      </div>
      <h3 class="mb-2 text-xl font-semibold">Receipt Helper</h3>
      <p class="text-gray-600">Split expenses with ease</p>
    </a>

    <!-- Minecraft WebGPU -->
    <a href="https://github.com/williamhCode/minecraft_webgpu" target="_blank" class="w-full max-w-xs text-center transition-transform hover:scale-105">
      <div class="mb-4 aspect-square overflow-hidden rounded-3xl bg-green-200">
        <img src="/assets/minecraft.webp" alt="Minecraft Clone" class="h-full w-full object-contain" />
      </div>
      <h3 class="mb-2 text-xl font-semibold">Minecraft Clone</h3>
      <p class="text-gray-600">Voxel engine with WebGPU</p>
    </a>

    <!-- Game Jam -->
    <a href="https://github.com/williamhCode/Game-Jam-2022" target="_blank" class="w-full max-w-xs text-center transition-transform hover:scale-105">
      <div class="mb-4 aspect-square overflow-hidden rounded-3xl bg-blue-200">
        <img src="/assets/snowball-shoveler.webp" alt="Game Jam 2022" class="h-full w-full object-contain" />
      </div>
      <h3 class="mb-2 text-xl font-semibold">Game Jam 2022</h3>
      <p class="text-gray-600">48-hour game jam project</p>
    </a>
  </div>
</section>
