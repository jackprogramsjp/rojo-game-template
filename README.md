# proj-elect

A Roblox Luau project template using the same stack as [fishing-minigame](https://github.com/littensy/fishing-minigame).

## Stack

- [Rojo](https://github.com/rojo-rbx/rojo) — project sync
- [Rokit](https://github.com/rojo-rbx/rokit) — toolchain management
- [Lute](https://lute.luau.org/) — Luau runtime, type checking, and CI scripts
- [Charm](https://github.com/littensy/charm) — reactive state management
- [Vide](https://centau.github.io/vide) — declarative UI
- [Lyra](https://github.com/paradoxum-games/lyra) — player data persistence
- [GreenTea](https://github.com/Corecii/GreenTea) — runtime type validation

## Getting started

```bash
# Install tools
rokit install

# Initialize submodules
git submodule update --init --recursive

# Set up Lute typedefs and .luaurc
lute setup --with-luaurc
```

Open Roblox Studio, run `rojo serve`, and connect the Rojo plugin to sync the project.

## Development

```bash
# Type check, lint, and format check
lute run check

# Run unit tests (Lute)
lute run tests

# Build a place file
rojo build -o proj-elect.rbxlx
```

For Roblox integration tests, start a playtest session in **Run Mode** (`F8`).

## Project layout

```
src/
  client/   UI components, client stores, client scripts
  server/   server logic and stores
  shared/   remotes, shared stores, types, tests
modules/    library wrappers and git submodules
tests/      Roblox test runner entry point
.lute/      Lute CI scripts (check, tests)
```
