load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "build_bazel_rules_nodejs",
    sha256 = "0f2de53628e848c1691e5729b515022f5a77369c76a09fbe55611e12731c90e3",
    urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/2.0.1/rules_nodejs-2.0.1.tar.gz"],
)

load("@build_bazel_rules_nodejs//:index.bzl", "npm_install")

# emscripten 2.0.9
http_archive(
    name = "emscripten",
    sha256 = "42e06a5ad4b369fcb435db097edb8c4fb824b3125a3b8996aca6f10bc79d9dca",
    strip_prefix = "install",
    url = "https://storage.googleapis.com/webassembly/emscripten-releases-builds/linux/d8e430f9a9b6e87502f826c39e7684852f59624f/wasm-binaries.tbz2",
    build_file = "//emscripten_toolchain:emscripten.BUILD",
    type = "tar.bz2",
)

npm_install(
    name = "npm_app",
    package_json = "//:package.json",
    package_lock_json = "//:package-lock.json",
)

npm_install(
    name = "npm",
    package_json = "@emscripten//:emscripten/package.json",
    package_lock_json = "@emscripten//:emscripten/package-lock.json",
)

http_archive(
    name = "build_bazel_rules_svelte",
    url = "https://github.com/thelgevold/rules_svelte/archive/0.18.zip",
    strip_prefix = "rules_svelte-0.18",
    sha256 = "f03ff71c14c5c63c312f320a43e1158e2faada08492f3c977a7c6d85a1960d78"
)

load("@build_bazel_rules_svelte//:defs.bzl", "rules_svelte_dependencies")
rules_svelte_dependencies()