EAPI=8

inherit cmake git-r3

DESCRIPTION="Patched libclc for Mesa Rusticl"
HOMEPAGE="https://gitlab.freedesktop.org/karolherbst/mesa-libclc"
EGIT_REPO_URI="https://gitlab.freedesktop.org/karolherbst/mesa-libclc.git"
EGIT_BRANCH="llvm_22"

LICENSE="Apache-2.0-with-LLVM-exceptions || ( MIT UoI-NCSA )"
SLOT="22"
IUSE=""

DEPEND="
    llvm-core/clang:22
    llvm-core/llvm:22
"
RDEPEND="${DEPEND}"

src_configure() {
    local mycmakeargs=(
        -DCMAKE_PREFIX_PATH="${EPREFIX}/usr/lib/llvm/22"
    )
    cmake_src_configure
}
