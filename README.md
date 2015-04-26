Sunday afternoon attempt at interoping Java-Android and Rust.

What works
==========

    Hacked jna library ready for gradle use. See [https://github.com/pakoito/jna](https://github.com/pakoito/jna)

    C compiling and ready for interop.

    C and Rust interop.

What doesn't work
==========

    Building static/dynamic Rust libraries that are binary compatible with Android.

Why didn't it work?
==========

Rust for Windows has trouble building dynamic libraries. See #[18807](https://github.com/rust-lang/rust/issues/18807)

Rust compiler for Android can not be built from Windows. See [this](https://github.com/rust-lang/rust-wiki-backup/blob/master/Doc-building-for-android.md).