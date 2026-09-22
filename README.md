## Available Packages

- **`llvm-runtimes/libclc-9999`**: A custom ebuild targeting Karol Herbst's patched `mesa-libclc` repository (`llvm_22` branch). Essential for eliminating warnings and ensuring full compatibility with **Mesa Rusticl** OpenCL on AMD GPUs.

---

## Installation

You can add this overlay to your Gentoo system using either **`eselect repository`** 

```bash
sudo eselect repository add gentoo_sxlmnwb_overlay git https://github.com/sxlmnwb/gentoo_sxlmnwb_overlay.git
sudo emaint sync -r gentoo_sxlmnwb_overlay