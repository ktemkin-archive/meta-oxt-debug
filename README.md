# Debug Layer for OpenXT
A simple OE layercontaining debugging "enhancements" (read: hacks) for @OpenXT.

Currently supports:
* Debugging QEMU 1.4 applications -- including debugging support inside of stubdomains.

## Use
From your OpenXT root directory-- the same directory with the _do_build.sh_:

1\. If you haven't yet started your OpenXT build, set up your OpenXT OE environment:

```
  ./do_build -s setupoe
```

2\. Check out the `meta-oxt-debug` repostiory into your _repos_ directory:
```
  git clone git://github.com/ktemkin/meta-oxt-debug build/repos/meta-oxt-debug
```

3\. Adjust your layer configuration `build/conf/bblayer.conf` to include the debug layer:

```
  sed -i '/xenclient-oe/ a \ \ ${TOPDIR}/repos\/meta-oxt-debug \\' ./build/conf/bblayers.conf
```

4\. Build! If you haven't created your build, yet, you can simply run:

```
  ./do_build.sh
```

If you've already completed a build, you can simply re-build the relevant sections:

```
  ./do_build.sh -s stubinitramfs,dom0,ship
```
