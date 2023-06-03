# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.6.2

EAPI=8

CRATES="
	addr2line-0.19.0
	adler-1.0.2
	aho-corasick-0.7.20
	android_system_properties-0.1.5
	anyhow-1.0.68
	ascii-canvas-3.0.0
	async-trait-0.1.64
	atty-0.2.14
	autocfg-1.1.0
	backtrace-0.3.67
	base64-0.13.1
	base64-0.21.0
	bindgen-0.63.0
	bit-set-0.5.3
	bit-vec-0.6.3
	bitflags-1.3.2
	buffered-reader-1.2.0
	bumpalo-3.12.0
	bytes-1.4.0
	bzip2-0.4.4
	bzip2-sys-0.1.11+1.0.8
	capnp-0.14.11
	capnp-futures-0.14.2
	capnp-rpc-0.14.1
	cc-1.0.79
	cexpr-0.6.0
	cfg-if-0.1.10
	cfg-if-1.0.0
	chrono-0.4.23
	clang-sys-1.4.0
	clap-4.0.32
	clap_complete-4.0.7
	clap_derive-4.0.21
	clap_lex-0.3.0
	clap_mangen-0.2.6
	codespan-reporting-0.11.1
	core-foundation-0.9.3
	core-foundation-sys-0.8.3
	crc32fast-1.3.2
	crossbeam-0.8.2
	crossbeam-channel-0.5.6
	crossbeam-deque-0.8.2
	crossbeam-epoch-0.9.13
	crossbeam-queue-0.3.8
	crossbeam-utils-0.8.14
	crunchy-0.2.2
	ctor-0.1.26
	cxx-1.0.89
	cxx-build-1.0.89
	cxxbridge-flags-1.0.89
	cxxbridge-macro-1.0.89
	data-encoding-2.3.3
	diff-0.1.13
	digest-0.9.0
	dirs-4.0.0
	dirs-next-2.0.0
	dirs-sys-0.3.7
	dirs-sys-next-0.1.2
	dyn-clone-1.0.10
	edit-distance-2.1.0
	either-1.8.1
	ena-0.14.0
	endian-type-0.1.2
	enum-as-inner-0.5.1
	enumber-0.3.0
	errno-0.2.8
	errno-dragonfly-0.1.2
	fastrand-1.8.0
	fd-lock-3.0.9
	filetime-0.2.19
	fixedbitset-0.4.2
	flate2-1.0.25
	fnv-1.0.7
	foreign-types-0.3.2
	foreign-types-shared-0.1.1
	form_urlencoded-1.1.0
	fs2-0.4.3
	futures-0.3.26
	futures-channel-0.3.26
	futures-core-0.3.26
	futures-executor-0.3.26
	futures-io-0.3.26
	futures-macro-0.3.26
	futures-sink-0.3.26
	futures-task-0.3.26
	futures-util-0.3.26
	generic-array-0.14.6
	getrandom-0.1.16
	getrandom-0.2.8
	gimli-0.27.1
	glob-0.3.1
	h2-0.3.15
	half-1.8.2
	hashbrown-0.12.3
	heck-0.4.1
	hermit-abi-0.1.19
	hermit-abi-0.2.6
	home-dir-0.1.0
	hostname-0.3.1
	http-0.2.8
	http-body-0.4.5
	httparse-1.8.0
	httpdate-1.0.2
	hyper-0.14.23
	hyper-tls-0.5.0
	iana-time-zone-0.1.53
	iana-time-zone-haiku-0.1.1
	idna-0.2.3
	idna-0.3.0
	indexmap-1.9.2
	instant-0.1.12
	io-lifetimes-1.0.5
	ipconfig-0.3.1
	ipnet-2.7.1
	is-terminal-0.4.2
	itertools-0.10.5
	itoa-1.0.5
	js-sys-0.3.61
	lalrpop-0.19.8
	lalrpop-util-0.19.8
	lazy_static-1.4.0
	lazycell-1.3.0
	libc-0.2.139
	libloading-0.7.4
	link-cplusplus-1.0.8
	linked-hash-map-0.5.6
	linux-raw-sys-0.1.4
	lock_api-0.4.9
	log-0.4.17
	lru-cache-0.1.2
	match_cfg-0.1.0
	matches-0.1.10
	memchr-2.5.0
	memoffset-0.7.1
	memsec-0.6.2
	minimal-lexical-0.2.1
	miniz_oxide-0.6.2
	mio-0.8.5
	native-tls-0.2.11
	nettle-7.3.0
	nettle-sys-2.2.0
	new_debug_unreachable-1.0.4
	nibble_vec-0.1.0
	nix-0.18.0
	nom-7.1.3
	num-integer-0.1.45
	num-traits-0.2.15
	num_cpus-1.15.0
	object-0.30.3
	once_cell-1.17.0
	openpgp-cert-d-0.1.0
	openssl-0.10.45
	openssl-macros-0.1.0
	openssl-probe-0.1.5
	openssl-sys-0.9.80
	os_str_bytes-6.4.1
	parking_lot-0.12.1
	parking_lot_core-0.9.7
	peeking_take_while-0.1.2
	percent-encoding-2.2.0
	petgraph-0.6.2
	phf_shared-0.10.0
	pin-project-lite-0.2.9
	pin-utils-0.1.0
	pkg-config-0.3.26
	ppv-lite86-0.2.17
	precomputed-hash-0.1.1
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	proc-macro2-1.0.50
	quick-error-1.2.3
	quote-1.0.23
	radix_trie-0.2.1
	rand-0.7.3
	rand-0.8.5
	rand_chacha-0.2.2
	rand_chacha-0.3.1
	rand_core-0.5.1
	rand_core-0.6.4
	rand_hc-0.2.0
	rayon-1.6.1
	rayon-core-1.10.2
	redox_syscall-0.2.16
	redox_users-0.4.3
	regex-1.7.1
	regex-syntax-0.6.28
	remove_dir_all-0.5.3
	resolv-conf-0.7.0
	ring-0.16.20
	roff-0.2.1
	rustc-demangle-0.1.21
	rustc-hash-1.1.0
	rustix-0.36.7
	rustversion-1.0.11
	schannel-0.1.21
	scopeguard-1.1.0
	scratch-1.0.3
	security-framework-2.8.2
	security-framework-sys-2.8.0
	sequoia-ipc-0.30.1
	sequoia-net-0.26.0
	sequoia-openpgp-1.16.0
	sequoia-openpgp-mt-0.1.0
	sequoia-policy-config-0.5.0
	sequoia-wot-0.4.1
	serde-1.0.152
	serde_cbor-0.11.2
	serde_derive-1.0.152
	sha1collisiondetection-0.2.6
	shlex-1.1.0
	siphasher-0.3.10
	slab-0.4.7
	smallvec-1.10.0
	socket2-0.4.7
	spin-0.5.2
	string_cache-0.8.4
	strsim-0.10.0
	syn-1.0.107
	tempfile-3.3.0
	term-0.7.0
	termcolor-1.2.0
	terminal_size-0.2.3
	thiserror-1.0.38
	thiserror-impl-1.0.38
	time-0.1.45
	time-0.3.17
	time-core-0.1.0
	tiny-keccak-2.0.2
	tinyvec-1.6.0
	tinyvec_macros-0.1.0
	tokio-1.25.0
	tokio-macros-1.8.2
	tokio-native-tls-0.3.0
	tokio-util-0.7.4
	toml-0.5.11
	tower-service-0.3.2
	tracing-0.1.37
	tracing-attributes-0.1.23
	tracing-core-0.1.30
	trust-dns-client-0.22.0
	trust-dns-proto-0.22.0
	trust-dns-resolver-0.22.0
	try-lock-0.2.4
	typenum-1.16.0
	unicode-bidi-0.3.10
	unicode-ident-1.0.6
	unicode-normalization-0.1.22
	unicode-width-0.1.10
	unicode-xid-0.2.4
	untrusted-0.7.1
	url-2.3.1
	vcpkg-0.2.15
	version_check-0.9.4
	want-0.3.0
	wasi-0.10.0+wasi-snapshot-preview1
	wasi-0.11.0+wasi-snapshot-preview1
	wasi-0.9.0+wasi-snapshot-preview1
	wasm-bindgen-0.2.84
	wasm-bindgen-backend-0.2.84
	wasm-bindgen-macro-0.2.84
	wasm-bindgen-macro-support-0.2.84
	wasm-bindgen-shared-0.2.84
	web-sys-0.3.61
	widestring-0.5.1
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	windows-sys-0.42.0
	windows-sys-0.45.0
	windows-targets-0.42.1
	windows_aarch64_gnullvm-0.42.1
	windows_aarch64_msvc-0.42.1
	windows_i686_gnu-0.42.1
	windows_i686_msvc-0.42.1
	windows_x86_64_gnu-0.42.1
	windows_x86_64_gnullvm-0.42.1
	windows_x86_64_msvc-0.42.1
	winreg-0.10.1
	xxhash-rust-0.8.6
	zbase32-0.1.2
"

LLVM_MAX_SLOT=16
inherit cargo llvm xdg-utils

DESCRIPTION="Sequoia's reimplementation of the GnuPG interface"
HOMEPAGE="https://sequoia-pgp.org/"
SRC_URI="
	https://gitlab.com/sequoia-pgp/sequoia-chameleon-gnupg/-/archive/v${PV}/${P}-v${PV}.tar.bz2
	$(cargo_crate_uris)
"
S="${WORKDIR}"/${PN}-v${PV}-a841c191a450b7d67580e079296cd09743fe43fe

LICENSE="GPL-3+"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 BSD Boost-1.0 CC0-1.0 ISC LGPL-2+ LGPL-3+ MIT
	Unicode-DFS-2016
	|| ( GPL-2 GPL-3 LGPL-3 )
"
SLOT="0"
KEYWORDS="~amd64 ~arm64"
# See e.g. https://gitlab.com/sequoia-pgp/sequoia-chameleon-gnupg/-/issues/8
# Even though that's fixed as of >0.2.0, tests still completely fail inside
# Portage. Not yet sure why/how. They do better outside, although some fail
# still then.
RESTRICT="test"

DEPEND="
	dev-libs/gmp:=
	dev-libs/nettle:=
"
RDEPEND="${DEPEND}"
# Needed for bindgen
BDEPEND="<sys-devel/clang-$((${LLVM_MAX_SLOT} + 1))"

QA_FLAGS_IGNORED="usr/bin/gpg-sq usr/bin/gpgv-sq"

PATCHES=(
	"${FILESDIR}"/${P}-tests.patch
	"${FILESDIR}"/${P}-sec-fixes.patch
)

llvm_check_deps() {
	has_version -b "sys-devel/clang:${LLVM_SLOT}"
}

src_test() {
	export GNUPGHOME="${T}"/.gnupg
	export REAL_GPG_BIN="${BROOT}"/usr/bin/gpg
	export REAL_GPGV_BIN="${BROOT}"/usr/bin/gpgv

	mkdir "${GNUPGHOME}" || die
	chmod 700 "${GNUPGHOME}" || die

	xdg_environment_reset
	RUST_BACKTRACE=full cargo_src_test -vv
}