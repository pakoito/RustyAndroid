Rusty Android
==========

Proof of Concept for interfacing Rust and Java-Android via JNA. Built on rustc 1.1.0-dev (aecf3d8b6 2015-05-01) 


What works
==========

    Hacked jna library ready for gradle use. See https://github.com/pakoito/jna

    C and Java interop via JNA

    C and Rust interop via static linkage

Put it all together and you get RustyAndroid.


How to
==========

Follow [this guide](https://github.com/rust-lang/rust-wiki-backup/blob/master/Doc-building-for-android.md) through steps 1-4 to get your toolchain running

*In case you're on an OSX, on step 3 your configure command is*

    ../configure --host=x86_64-apple-darwin --target=arm-linux-androideabi --android-cross-path="$ANDROID_TOOLCHAIN"

Clone this repository

    git clone https://github.com/pakoito/RustyAndroid/

Import into Android Studio

Setup your ```ndk.dir``` in ```local.properties```

Create your .rs files like the examples in the RustLib folder, and compile them using rustc

    rustc --target=arm-linux-androideabi -C linker=$ANDROID_TOOLCHAIN/bin/arm-linux-androideabi-gcc -C link-args=-pie -C ar=$ANDROID_TOOLCHAIN/bin/arm-linux-androideabi-ar --crate-type=staticlib src/lib.rs

*Cargo was giving me hell for Android on OSX, go the rustc route for now*

Rename your .a output and copy it to /app/src/main/jni

See ```build.gradle```, ```Android.mk``` and ```Application.mk```

For JNA integration, see ```ThingLibrary.java``` and ```MainActivity.java```


Known Issues
=============

Plenty of them. This shouldn't even work but it does.

There is a requirement for the unwind library found by @skligys to solve some missing dependencies.


Jnaenerator
============

You can autogenerate your java glue files using Jnaenerator with a variation of

    java -jar jnaerator-shaded.jar -library thing thing.c -o . -v -noJar -noComp -runtime JNA


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

https://github.com/rust-lang/rust/issues/25032#issuecomment-98176414

http://stackoverflow.com/questions/15241869/pthread-error-in-ndk-build

https://github.com/skligys/rusty-cardboard/tree/fc999e0385de7ab5d32a319ca523225a7e0d673f/jni
