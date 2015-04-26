Sunday afternoon attempt at interoping Java-Android and Rust.

tl;dr not possible on windows yet due to lack of llvm

What works
==========

    Hacked jna library ready for gradle use. See https://github.com/pakoito/jna

    C compiling and ready for interop.

    C and Rust interop as shown in RustLib.


What doesn't work
==========

    Building static/dynamic Rust libraries that are binary compatible with Android.


Why didn't it work?
==========

Rust for Windows has trouble building dynamic libraries. See #[18807](https://github.com/rust-lang/rust/issues/18807)

Rust compiler for Android can not be built from Windows. See [this](https://github.com/rust-lang/rust-wiki-backup/blob/master/Doc-building-for-android.md).


Todo
==========

Try again on Linux/OSX next week.


License
==========

See LICENSE.md


References (in no special order)
==========

http://blog.rust-lang.org/2015/04/24/Rust-Once-Run-Everywhere.html

http://users.rust-lang.org/t/rust-nightly-for-android/645/3

https://github.com/rust-lang/rust-wiki-backup/blob/master/Doc-building-for-android.md

https://github.com/rust-lang/rust/issues/17437

http://harkablog.com/calling-rust-from-c-and-python.html

http://stackoverflow.com/questions/28161628/linking-shared-object-library-without-headers-with-ndk-in-android-studio

https://ubuntuincident.wordpress.com/2014/12/24/getting-started-with-the-rust-programming-language/

http://www.sureshjoshi.com/mobile/android-ndk-in-android-studio-with-swig/

http://sdgsystems.com/blog/using-android-ndk-android-studio/

http://www.eshayne.com/jnaex/example01.html

https://code.google.com/p/jnaerator/wiki/JNAeratorFAQ
