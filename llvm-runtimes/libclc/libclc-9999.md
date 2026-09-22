## (`llvm-runtimes/libclc-9999`)

To install the patched libclc required for Mesa Rusticl:

1. Accept the live keyword if necessary in your `/etc/portage/package.accept_keywords`:
```text
llvm-runtimes/libclc **
```

2. Emerge the package:
```bash
sudo emerge --ask llvm-runtimes/libclc-9999
```

3. Recompile Mesa to bind it with the patched libclc:
```bash
sudo emerge --ask media-libs/mesa
```
