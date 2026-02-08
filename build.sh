#!/bin/bash
set -e

# Top-level files
touch Cargo.toml Cargo.lock README.md LICENSE-APACHE LICENSE-MIT .gitignore CONTRIBUTING.md

# benches
mkdir -p benches/collections benches/sync benches/io
touch benches/collections/vec_bench.rs
touch benches/collections/hashmap_bench.rs
touch benches/sync/mutex_bench.rs
touch benches/io/read_bench.rs

# scripts
mkdir -p scripts
touch scripts/ci.sh scripts/check-bloat.sh

# crates
mkdir -p crates/nstd-core/src
touch crates/nstd-core/Cargo.toml
touch crates/nstd-core/src/lib.rs
touch crates/nstd-core/src/marker.rs
touch crates/nstd-core/src/panicking.rs
touch crates/nstd-core/src/num.rs

mkdir -p crates/nstd-alloc/src
touch crates/nstd-alloc/Cargo.toml
touch crates/nstd-alloc/src/lib.rs
touch crates/nstd-alloc/src/allocator.rs
touch crates/nstd-alloc/src/layout.rs

mkdir -p crates/nstd-collections/src/vec
mkdir -p crates/nstd-collections/src/string
mkdir -p crates/nstd-collections/src/map
touch crates/nstd-collections/Cargo.toml
touch crates/nstd-collections/src/lib.rs
touch crates/nstd-collections/src/vec/mod.rs
touch crates/nstd-collections/src/vec/drain.rs
touch crates/nstd-collections/src/string/mod.rs
touch crates/nstd-collections/src/string/convert.rs
touch crates/nstd-collections/src/map/mod.rs
touch crates/nstd-collections/src/slice.rs

mkdir -p crates/nstd-sync/src
touch crates/nstd-sync/Cargo.toml
touch crates/nstd-sync/src/lib.rs
touch crates/nstd-sync/src/atomic.rs
touch crates/nstd-sync/src/mutex.rs

mkdir -p crates/nstd-io/src
touch crates/nstd-io/Cargo.toml
touch crates/nstd-io/src/lib.rs
touch crates/nstd-io/src/read.rs
touch crates/nstd-io/src/write.rs
touch crates/nstd-io/src/stdio.rs

mkdir -p crates/nstd-os/src/unix crates/nstd-os/src/windows
touch crates/nstd-os/Cargo.toml
touch crates/nstd-os/src/lib.rs

mkdir -p crates/nstd-fs/src
touch crates/nstd-fs/Cargo.toml
touch crates/nstd-fs/src/lib.rs

mkdir -p crates/nstd-sys/src/pal crates/nstd-sys/src/os
touch crates/nstd-sys/Cargo.toml
touch crates/nstd-sys/src/lib.rs

# examples
mkdir -p examples
touch examples/vec_simple.rs
touch examples/io_read.rs

# tests
mkdir -p tests
touch tests/integration_test.rs

echo "Directory structure created successfully!"
