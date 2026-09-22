# gentoo_sxlmnwb_overlay

Personal Gentoo overlay providing bleeding-edge graphics drivers (Mesa with LLVM 23 support), OpenCL/Rusticl runtime enhancements, and power management utilities optimized for modern hardware.

---

## Available Packages

| Category | Package | Version | Description |
| :--- | :--- | :--- | :--- |
| **`media-libs`** | `mesa` | `26.2.5` | Patched Mesa graphics stack with **LLVM 23** support (`llvm_slot_23`) and automatic `llvm_fix_clang_version` override for custom Clang toolchains (e.g., `xBoreUp_Clang`). |
| **`llvm-runtimes`** | `libclc` | `9999` | Live ebuild targeting Karol Herbst's patched `mesa-libclc` repository (`llvm_22` branch). Essential for eliminating warnings and ensuring full compatibility with **Mesa Rusticl** OpenCL on AMD GPUs. |
| **`sys-power`** | `power-profiles-daemon` | `9999` | Live Git ebuild for the latest power management daemon features. |

---

## Installation

### Method 1: Using `eselect repository` (Recommended)

1. Add the overlay to your system:
   ```bash
   sudo eselect repository add gentoo_sxlmnwb_overlay git https://github.com/sxlmnwb/gentoo_sxlmnwb_overlay.git
