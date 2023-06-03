# Copyright 2021-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Generate base ebuild via
# cargo-ebuild ebuild --manifest-path sq/Cargo.toml --package-name sequoia-sq
# and then extract contents of CRATES variable.

EAPI=8

CRATES="
	adler-1.0.2
	aead-0.3.2
	aes-0.6.0
	aes-soft-0.6.4
	aesni-0.10.0
	aho-corasick-0.7.18
	android_system_properties-0.1.5
	ansi_term-0.12.1
	anyhow-1.0.56
	ascii-canvas-3.0.0
	assert_cmd-2.0.4
	async-trait-0.1.56
	atty-0.2.14
	autocfg-0.1.8
	autocfg-1.1.0
	base64-0.13.0
	bindgen-0.57.0
	bit-set-0.5.2
	bit-vec-0.6.3
	bitflags-1.3.2
	bitvec-0.20.4
	block-buffer-0.7.3
	block-buffer-0.9.0
	block-modes-0.7.0
	block-padding-0.1.5
	block-padding-0.2.1
	blowfish-0.7.0
	bstr-0.2.17
	bumpalo-3.9.1
	byte-tools-0.3.1
	byteorder-1.4.3
	bytes-1.1.0
	bzip2-0.4.3
	bzip2-sys-0.1.11+1.0.8
	capnp-0.14.6
	capnp-futures-0.14.1
	capnp-rpc-0.14.1
	cast-0.2.7
	cast5-0.9.0
	cc-1.0.73
	cexpr-0.4.0
	cfg-if-1.0.0
	chrono-0.4.23
	cipher-0.2.5
	clang-sys-1.3.1
	clap-2.34.0
	clap-3.2.19
	clap_complete-3.1.4
	clap_derive-3.2.18
	clap_lex-0.2.4
	cmac-0.5.1
	codespan-reporting-0.11.1
	const-oid-0.5.2
	core-foundation-0.9.3
	core-foundation-sys-0.8.3
	cpufeatures-0.2.2
	crc32fast-1.3.2
	criterion-0.3.5
	criterion-plot-0.4.4
	crossbeam-channel-0.5.4
	crossbeam-deque-0.8.1
	crossbeam-epoch-0.9.8
	crossbeam-utils-0.8.8
	crunchy-0.2.2
	crypto-mac-0.10.1
	crypto-mac-0.11.1
	csv-1.1.6
	csv-core-0.1.10
	ctor-0.1.22
	ctr-0.6.0
	curve25519-dalek-3.2.1
	cxx-1.0.91
	cxx-build-1.0.91
	cxxbridge-flags-1.0.91
	cxxbridge-macro-1.0.91
	data-encoding-2.3.2
	dbl-0.3.2
	der-0.3.5
	des-0.6.0
	deunicode-0.4.3
	diff-0.1.12
	difflib-0.4.0
	digest-0.8.1
	digest-0.9.0
	dirs-4.0.0
	dirs-next-2.0.0
	dirs-sys-0.3.7
	dirs-sys-next-0.1.2
	doc-comment-0.3.3
	dyn-clone-1.0.5
	eax-0.3.0
	ecdsa-0.11.1
	ed25519-1.4.1
	ed25519-dalek-1.0.1
	either-1.6.1
	elliptic-curve-0.9.12
	ena-0.14.0
	endian-type-0.1.2
	enum-as-inner-0.5.1
	env_logger-0.7.1
	env_logger-0.9.0
	fake-simd-0.1.2
	fastrand-1.7.0
	fehler-1.0.0
	fehler-macros-1.0.0
	ff-0.9.0
	file_diff-1.0.0
	filetime-0.2.16
	fixedbitset-0.2.0
	flate2-1.0.23
	float-cmp-0.9.0
	fnv-1.0.7
	foreign-types-0.3.2
	foreign-types-shared-0.1.1
	form_urlencoded-1.0.1
	fs2-0.4.3
	funty-1.1.0
	futures-0.3.21
	futures-channel-0.3.21
	futures-core-0.3.21
	futures-executor-0.3.21
	futures-io-0.3.21
	futures-macro-0.3.21
	futures-sink-0.3.21
	futures-task-0.3.21
	futures-util-0.3.21
	generator-0.7.0
	generic-array-0.12.4
	generic-array-0.14.5
	getopts-0.2.21
	getrandom-0.1.16
	getrandom-0.2.6
	git-testament-0.2.1
	git-testament-derive-0.1.13
	glob-0.3.0
	globset-0.4.8
	globwalk-0.8.1
	group-0.9.0
	h2-0.3.13
	half-1.8.2
	hashbrown-0.11.2
	heck-0.4.0
	hermit-abi-0.1.19
	hmac-0.11.0
	hostname-0.3.1
	http-0.2.6
	http-body-0.4.4
	httparse-1.7.0
	httpdate-1.0.2
	humansize-1.1.1
	humantime-1.3.0
	humantime-2.1.0
	hyper-0.14.18
	hyper-tls-0.5.0
	iana-time-zone-0.1.53
	iana-time-zone-haiku-0.1.1
	idea-0.3.0
	idna-0.2.3
	ignore-0.4.18
	indexmap-1.8.1
	instant-0.1.12
	ipconfig-0.3.0
	ipnet-2.5.0
	itertools-0.8.2
	itertools-0.10.3
	itoa-0.4.8
	itoa-1.0.1
	js-sys-0.3.57
	lalrpop-0.19.7
	lalrpop-util-0.19.7
	lazy_static-1.4.0
	lazycell-1.3.0
	libc-0.2.139
	libloading-0.7.3
	libm-0.2.2
	link-cplusplus-1.0.8
	linked-hash-map-0.5.4
	lock_api-0.4.7
	log-0.4.16
	loom-0.5.4
	lru-cache-0.1.2
	maplit-1.0.2
	match_cfg-0.1.0
	matchers-0.1.0
	matches-0.1.9
	md-5-0.9.1
	memchr-2.4.1
	memoffset-0.6.5
	memsec-0.6.0
	miniz_oxide-0.5.1
	mio-0.8.2
	miow-0.3.7
	native-tls-0.2.10
	nettle-7.1.0
	nettle-sys-2.1.0
	new_debug_unreachable-1.0.4
	nibble_vec-0.1.0
	no-std-compat-0.4.1
	nom-5.1.2
	normalize-line-endings-0.3.0
	ntapi-0.3.7
	num-bigint-0.2.6
	num-bigint-dig-0.6.1
	num-integer-0.1.44
	num-iter-0.1.42
	num-traits-0.2.14
	num_cpus-1.13.1
	num_threads-0.1.5
	once_cell-1.13.0
	oorandom-11.1.3
	opaque-debug-0.2.3
	opaque-debug-0.3.0
	openssl-0.10.45
	openssl-macros-0.1.0
	openssl-probe-0.1.5
	openssl-sys-0.9.80
	os_str_bytes-6.0.0
	p256-0.8.1
	pandoc-0.8.9
	pandoc_ast-0.7.3
	parking_lot-0.12.0
	parking_lot_core-0.9.2
	peeking_take_while-0.1.2
	pem-0.8.3
	percent-encoding-2.1.0
	pest-2.1.3
	pest_derive-2.1.0
	pest_generator-2.1.3
	pest_meta-2.1.3
	petgraph-0.5.1
	phf_shared-0.10.0
	pikchr-0.1.1
	pin-project-lite-0.2.8
	pin-utils-0.1.0
	pkcs8-0.6.1
	pkg-config-0.3.25
	plotters-0.3.1
	plotters-backend-0.3.2
	plotters-svg-0.3.1
	ppv-lite86-0.2.16
	precomputed-hash-0.1.1
	predicates-2.1.1
	predicates-core-1.0.3
	predicates-tree-1.0.5
	pretty_env_logger-0.4.0
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	proc-macro2-1.0.40
	pulldown-cmark-0.9.1
	quick-error-1.2.3
	quickcheck-1.0.3
	quote-1.0.18
	radium-0.6.2
	radix_trie-0.2.1
	rand-0.7.3
	rand-0.8.5
	rand_chacha-0.2.2
	rand_chacha-0.3.1
	rand_core-0.5.1
	rand_core-0.6.3
	rand_hc-0.2.0
	rayon-1.5.2
	rayon-core-1.9.2
	redox_syscall-0.2.13
	redox_users-0.4.3
	regex-1.5.5
	regex-automata-0.1.10
	regex-syntax-0.6.25
	remove_dir_all-0.5.3
	remove_dir_all-0.7.0
	resolv-conf-0.7.0
	ripemd160-0.9.1
	roadmap-0.4.5
	roff-0.2.1
	rpassword-6.0.1
	rsa-0.3.0
	rustc-hash-1.1.0
	rustc_version-0.4.0
	rustversion-1.0.6
	ryu-1.0.9
	same-file-1.0.6
	schannel-0.1.19
	scoped-tls-1.0.0
	scopeguard-1.1.0
	scratch-1.0.3
	security-framework-2.6.1
	security-framework-sys-2.6.1
	semver-1.0.7
	serde-1.0.137
	serde-aux-4.0.0
	serde_cbor-0.11.2
	serde_derive-1.0.137
	serde_json-1.0.81
	serde_yaml-0.8.26
	sha-1-0.8.2
	sha-1-0.9.8
	sha1collisiondetection-0.2.5
	sha2-0.9.9
	sharded-slab-0.1.4
	shell-words-1.1.0
	shlex-0.1.1
	signature-1.3.2
	simple_asn1-0.4.1
	siphasher-0.3.10
	slab-0.4.6
	slug-0.1.4
	smallvec-1.8.0
	smawk-0.3.1
	socket2-0.4.4
	spin-0.5.2
	spki-0.3.0
	state-0.5.2
	string_cache-0.8.4
	strsim-0.10.0
	subplot-0.5.0
	subplot-build-0.5.0
	subplotlib-0.5.0
	subplotlib-derive-0.5.0
	subtle-2.4.1
	syn-1.0.98
	synstructure-0.12.6
	tap-1.0.1
	tempfile-3.3.0
	tempfile-fast-0.3.4
	tera-1.15.0
	term-0.7.0
	term_size-0.3.2
	termcolor-1.1.3
	terminal_size-0.1.17
	termtree-0.2.4
	textwrap-0.11.0
	textwrap-0.15.0
	thiserror-1.0.30
	thiserror-impl-1.0.30
	thread_local-1.1.4
	time-0.1.43
	time-0.3.9
	time-macros-0.2.4
	tiny-keccak-2.0.2
	tinytemplate-1.2.1
	tinyvec-1.5.1
	tinyvec_macros-0.1.0
	tokio-1.19.2
	tokio-macros-1.7.0
	tokio-native-tls-0.3.0
	tokio-util-0.7.1
	tower-service-0.3.1
	tracing-0.1.34
	tracing-attributes-0.1.20
	tracing-core-0.1.26
	tracing-log-0.1.2
	tracing-subscriber-0.3.11
	trust-dns-client-0.22.0
	trust-dns-proto-0.22.0
	trust-dns-resolver-0.22.0
	try-lock-0.2.3
	twofish-0.5.0
	typenum-1.15.0
	ucd-trie-0.1.3
	unescape-0.1.0
	unic-char-property-0.9.0
	unic-char-range-0.9.0
	unic-common-0.9.0
	unic-segment-0.9.0
	unic-ucd-segment-0.9.0
	unic-ucd-version-0.9.0
	unicase-2.6.0
	unicode-bidi-0.3.7
	unicode-ident-1.0.1
	unicode-linebreak-0.1.2
	unicode-normalization-0.1.19
	unicode-width-0.1.9
	unicode-xid-0.2.2
	url-2.2.2
	valuable-0.1.0
	vcpkg-0.2.15
	version_check-0.9.4
	wait-timeout-0.2.0
	walkdir-2.3.2
	want-0.3.0
	wasi-0.9.0+wasi-snapshot-preview1
	wasi-0.10.2+wasi-snapshot-preview1
	wasi-0.11.0+wasi-snapshot-preview1
	wasm-bindgen-0.2.80
	wasm-bindgen-backend-0.2.80
	wasm-bindgen-macro-0.2.80
	wasm-bindgen-macro-support-0.2.80
	wasm-bindgen-shared-0.2.80
	web-sys-0.3.57
	widestring-0.5.1
	win-crypto-ng-0.4.0
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	windows-sys-0.34.0
	windows_aarch64_msvc-0.34.0
	windows_i686_gnu-0.34.0
	windows_i686_msvc-0.34.0
	windows_x86_64_gnu-0.34.0
	windows_x86_64_msvc-0.34.0
	winreg-0.7.0
	wyz-0.2.0
	x25519-dalek-1.2.0
	xxhash-rust-0.8.5
	yaml-rust-0.4.5
	zbase32-0.1.2
	zeroize-1.3.0
	zeroize_derive-1.3.2
"

# TODO: Should be able to try 16 in next release after 0.28.0
LLVM_MAX_SLOT=15

inherit bash-completion-r1 cargo llvm

DESCRIPTION="CLI of the Sequoia OpenPGP implementation"
HOMEPAGE="https://sequoia-pgp.org/ https://gitlab.com/sequoia-pgp/sequoia"

SRC_URI="
	https://gitlab.com/sequoia-pgp/sequoia/-/archive/sq/v${PV}/${PN}-v${PV}.tar.bz2
	$(cargo_crate_uris)
"

LICENSE="Apache-2.0 BSD Boost-1.0 CC0-1.0 GPL-3 GPL-3+ ISC LGPL-3+ MIT MIT-0 MPL-2.0"
SLOT="0"
KEYWORDS="amd64 ~ppc64"

S="${WORKDIR}/${PN}-v${PV}"

QA_FLAGS_IGNORED="usr/bin/sq"

COMMON_DEPEND="
	dev-libs/gmp:=
	dev-libs/nettle:=
	dev-libs/openssl:=
"

DEPEND="
	sys-devel/clang
	${COMMON_DEPEND}
"
RDEPEND="${COMMON_DEPEND}"
# Clang needed for bindgen
BDEPEND="
	<sys-devel/clang-$((${LLVM_MAX_SLOT} + 1))
	virtual/pkgconfig
"

llvm_check_deps() {
	has_version -b "sys-devel/clang:${LLVM_SLOT}"
}

src_compile() {
	cd sq || die
	# Setting CARGO_TARGET_DIR is required to have the build system
	# create the bash and zsh completion files.
	CARGO_TARGET_DIR="${S}/target" cargo_src_compile
}

src_test() {
	cd sq || die
	cargo_src_test
}

src_install() {
	cargo_src_install --path sq

	doman sq/man-sq/*

	newbashcomp target/sq.bash sq

	insinto /usr/share/zsh/site-functions
	doins target/_sq

	insinto /usr/share/fish/vendor_completions.d
	doins target/sq.fish
}