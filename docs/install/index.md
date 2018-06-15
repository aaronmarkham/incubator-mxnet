# Installing MXNet

Indicate your preferred configuration. Then, follow the customized commands to install *MXNet*.

  <div class="dropdown">
    <button class="btn current-version btn-primary dropdown-toggle" type="button" data-toggle="dropdown">v1.2.0
    <span class="caret"></span></button>
    <ul class="dropdown-menu opt-group">
      <li class="opt active versions"><a href="#">v1.2.0</a></li>
      <li class="opt versions"><a href="#">v1.1.0</a></li>
      <li class="opt versions"><a href="#">v1.0.0</a></li>
      <li class="opt versions"><a href="#">v0.12.1</a></li>
      <li class="opt versions"><a href="#">v0.11.0</a></li>
      <li class="opt versions"><a href="#">master</a></li>
    </ul>
  </div>

<script type="text/javascript" src='../_static/js/options.js'></script>

<!-- START - OS Menu -->

<div class="btn-group opt-group" role="group">
  <button type="button" class="btn btn-default opt active platform">Linux</button>
  <button type="button" class="btn btn-default opt platform">macOS</button>
  <button type="button" class="btn btn-default opt platform">Windows</button>
  <button type="button" class="btn btn-default opt platform">Devices</button>
</div>

<!-- START - Package Menu -->

<div class="linux macos windows">
<div class="btn-group opt-group" role="group">
  <button type="button" class="btn btn-default opt active package">pip</button>
  <button type="button" class="btn btn-default opt package">Source</button>
</div>
</div>

<!-- START - Python Menu -->

<div class="linux macos windows">
<div class="btn-group opt-group" role="group">
  <button type="button" class="btn btn-default opt active python">3.x</button>
  <button type="button" class="btn btn-default opt python">2.7</button>
</div>
</div>

<!-- START - CUDA Menu -->

<div class="linux macos windows">
<div class="btn-group opt-group" role="group">
  <button type="button" class="btn btn-default opt cuda">CUDA 9.2</button>
  <button type="button" class="btn btn-default opt cuda">CUDA 9.1</button>
  <button type="button" class="btn btn-default opt cuda">CUDA 9.0</button>
  <button type="button" class="btn btn-default opt cuda">CUDA 8.0</button>
  <button type="button" class="btn btn-default opt active cuda">no CUDA</button>
</div>
</div>

<!-- START - MKL Menu -->

<div class="linux macos windows">
<div class="btn-group opt-group" role="group">
  <button type="button" class="btn btn-default opt mkl">MKL on</button>
  <button type="button" class="btn btn-default opt active mkl">MKL off</button>
</div>
</div>

<!-- other devices -->

<div class="devices">
<div class="btn-group opt-group" role="group">
  <button type="button" class="btn btn-default iots opt active">Raspberry Pi</button>
  <button type="button" class="btn btn-default iots opt">NVIDIA Jetson TX2</button>
</div>
</div>

<!-- END - Main Menu -->

<!-- START - Linux Python Installation Instructions -->

<div class="linux">
<div class="source">
<br>
Refer to these detailed instructions for [building MXNet on Ubuntu](ubuntu_setup.html).
</div>
</div>

<div class="macos">
<div class="source">
<br/>
```
wget https://raw.githubusercontent.com/dmlc/mxnet/master/setup-utils/install-mxnet-osx-python.sh
chmod +x install-mxnet-osx-python.sh
./install-mxnet-osx-python.sh
```
</div>
</div>


<div class="windows">
<div class="source">
<br>
Refer to these detailed instructions for [building MXNet on Windows](windows_setup.html).
</div>
</div>

<div class="mac windows linux">
<div class="pip">
<div class="3.x">
<div class="9.2">

<div class="mkl-on">

<div class="v1-2-0">

<br/>

```
pip3 install mxnet-cu92mkl
```

</div> <!-- End of v1-2-0 -->

<div class="v1-1-0 v1-0-0 v0-12-0 v0-11-0">
<!-- No cu92 mkl support -->
</div>

<div class="master">

```bash
pip3 install mxnet-cu92mkl --pre
```

</div>

<!-- End cu92 mkl-on -->


<div class="mkl-off">

<div class="v1-2-0">

<br/>

```
pip3 install mxnet-cu92
```

</div> <!-- End of v1-2-0 -->

<div class="v1-1-0 v1-0-0 v0-12-0 v0-11-0">
<!-- No cu92 support -->
</div>

<div class="master">

```bash
pip3 install mxnet-cu92 --pre
```

</div>

</div>

<!-- End cu92 mkl-off -->

</div>

<!-- End cu92 -->

<!-- ************ Start cu91 ************* -->

<div class="9.1">

<div class="mkl-on">

<div class="v1-2-0">

<br/>

```
pip3 install mxnet-cu91mkl
```

</div>

<div class="v1-1-0">

<br/>

```
pip3 install mxnet-cu91mkl==1.1.0
```

</div>

<div class="v1-0-0 v0-12-0 v0-11-0">
<!-- No cu91 mkl support -->
</div>

<div class="master">

```bash
pip3 install mxnet-cu91mkl --pre
```

</div>

<!-- End cu91 mkl-on -->


<div class="mkl-off">

<div class="v1-2-0">

<br/>

```
pip3 install mxnet-cu91
```

</div>

<div class="v1-1-0">

<br/>

```
pip3 install mxnet-cu91==1.1.0
```

</div>

<div class="v1-0-0 v0-12-0 v0-11-0">
<!-- No cu91 support -->
</div>

<div class="master">

```bash
pip3 install mxnet-cu91 --pre
```

</div>

</div> <!-- End cu91 mkl-off -->

</div> <!-- End cu91 -->

<!-- ************ Start cu90 ************* -->

<div class="9.0">

<div class="mkl-on">

<div class="v1-2-0">

<br/>

```
pip3 install mxnet-cu90mkl
```

</div>

<div class="v1-1-0">

<br/>

```
pip3 install mxnet-cu90mkl==1.1.0
```

</div>

<div class="v1-0-0">

<br/>

```
pip3 install mxnet-cu90mkl==1.0.0
```

</div>

<div class="v0-12-0">

<br/>

```
pip3 install mxnet-cu90mkl==0.12.0
```

</div>

<div class="v0-11-0">
<!-- No cu90 or cu90 mkl support -->
</div>

<div class="master">

```bash
pip3 install mxnet-cu90mkl --pre
```

</div>

</div><!-- End cu90 mkl-on -->


<div class="mkl-off">

<div class="v1-2-0">

<br/>

```
pip3 install mxnet-cu90
```

</div>

<div class="v1-1-0">

<br/>

```
pip3 install mxnet-cu90==1.1.0
```

</div>

<div class="v1-0-0">

<br/>

```
pip3 install mxnet-cu90==1.0.0
```

</div>

<div class="v0-12-0">

<br/>

```
pip3 install mxnet-cu90==0.12.0
```

</div>

<div class="v0-11-0">
<!-- No cu90 support -->
</div>

<div class="master">

```bash
pip3 install mxnet-cu90 --pre
```

</div>

</div><!-- End mkl-off -->

</div><!-- End cu90 -->

<!-- ************ Start cu80 ************* -->

<div class="8.0">


<div class="mkl-on">

<div class="v1-2-0">

<br/>

```
pip3 install mxnet-cu80mkl
```

</div>

<div class="v1-1-0">

<br/>

```
pip3 install mxnet-cu80mkl==1.1.0
```

</div>

<div class="v1-0-0">

<br/>

```
pip3 install mxnet-cu80mkl==1.0.0
```

</div>

<div class="v0-12-0">

<br/>

```
pip3 install mxnet-cu80mkl==0.12.0
```

</div>

<div class="v0-11-0">

<br/>

```
pip3 install mxnet-cu80mkl==0.11.0
```

</div>

<div class="master">

```bash
pip3 install mxnet-cu80mkl --pre
```

</div>

</div><!-- End cu90 mkl-on -->


<div class="mkl-off">

<div class="v1-2-0">

<br/>

```
pip3 install mxnet-cu80
```

</div>

<div class="v1-1-0">

<br/>

```
pip3 install mxnet-cu80==1.1.0
```

</div>

<div class="v1-0-0">

<br/>

```
pip3 install mxnet-cu80==1.0.0
```

</div>

<div class="v0-12-0">

<br/>

```
pip3 install mxnet-cu80==0.12.0
```

</div>

<div class="v0-11-0">

<br/>

```
pip3 install mxnet-cu80==0.11.0
```

</div>

<div class="master">

```bash
pip3 install mxnet-cu80 --pre
```

</div>

</div><!-- End mkl-off -->

</div><!-- End cu80 -->

<!-- ***************  Start no cuda *************** -->
<div class="no-cuda">


<div class="mkl-on">

<div class="v1-2-0">

<br/>

```
pip3 install mxnet-mkl
```

</div>

<div class="v1-1-0">

<br/>

```
pip3 install mxnet-mkl==1.1.0
```

</div>

<div class="v1-0-0">

<br/>

```
pip3 install mxnet-mkl==1.0.0
```

</div>

<div class="v0-12-0">

<br/>

```
pip3 install mxnet-mkl==0.12.0
```

</div>

<div class="v0-11-0">

<br/>

```
pip3 install mxnet-mkl==0.11.0
```

</div>

<div class="master">

```bash
pip3 install mxnet-mkl --pre
```

</div>


</div><!-- End cu90 mkl-on -->


<div class="mkl-off">

<div class="v1-2-0">

<br/>

```
pip3 install mxnet
```

</div>

<div class="v1-1-0">

<br/>

```
pip3 install mxnet==1.1.0
```

</div>

<div class="v1-0-0">

<br/>

```
pip3 install mxnet==1.0.0
```

</div>

<div class="v0-12-0">

<br/>

```
pip3 install mxnet==0.12.1
```

</div>

<div class="v0-11-0">

<br/>

```
pip3 install mxnet==0.11.0
```

</div>

<div class="master">

```bash
pip3 install mxnet --pre
```

</div>

</div><!-- End mkl-off -->

</div><!-- End no cuda -->

</div><!-- End python 3x -->


<!-- ************** Start Python 2.7 ***************** -->

<div class="2.7">
<div class="9.2">

<div class="mkl-on">

<div class="v1-2-0">

<br/>

```
pip install mxnet-cu92mkl
```

</div> <!-- End of v1-2-0 -->

<div class="v1-1-0 v1-0-0 v0-12-0 v0-11-0">
<!-- No cu92 mkl support -->
</div>

<div class="master">

```bash
pip install mxnet-cu92mkl --pre
```

</div>

<!-- End cu92 mkl-on -->


<div class="mkl-off">

<div class="v1-2-0">

<br/>

```
pip install mxnet-cu92
```

</div> <!-- End of v1-2-0 -->

<div class="v1-1-0 v1-0-0 v0-12-0 v0-11-0">
<!-- No cu92 support -->
</div>

<div class="master">

```bash
pip install mxnet-cu92 --pre
```

</div>

</div>

<!-- End cu92 mkl-off -->

</div>

<!-- End cu92 -->

<!-- ************ Start cu91 ************* -->

<div class="9.1">

<div class="mkl-on">

<div class="v1-2-0">

<br/>

```
pip install mxnet-cu91mkl
```

</div>

<div class="v1-1-0">

<br/>

```
pip install mxnet-cu91mkl==1.1.0
```

</div>

<div class="v1-0-0 v0-12-0 v0-11-0">
<!-- No cu91 mkl support -->
</div>

<div class="master">

```bash
pip install mxnet-cu91mkl --pre
```

</div>

<!-- End cu91 mkl-on -->


<div class="mkl-off">

<div class="v1-2-0">

<br/>

```
pip install mxnet-cu91
```

</div>

<div class="v1-1-0">

<br/>

```
pip install mxnet-cu91==1.1.0
```

</div>

<div class="v1-0-0 v0-12-0 v0-11-0">
<!-- No cu91 support -->
</div>

<div class="master">

```bash
pip install mxnet-cu91 --pre
```

</div>

</div> <!-- End cu91 mkl-off -->

</div> <!-- End cu91 -->

<!-- ************ Start cu90 ************* -->

<div class="9.0">

<div class="mkl-on">

<div class="v1-2-0">

<br/>

```
pip install mxnet-cu90mkl
```

</div>

<div class="v1-1-0">

<br/>

```
pip install mxnet-cu90mkl==1.1.0
```

</div>

<div class="v1-0-0">

<br/>

```
pip install mxnet-cu90mkl==1.0.0
```

</div>

<div class="v0-12-0">

<br/>

```
pip install mxnet-cu90mkl==0.12.0
```

</div>

<div class="v0-11-0">
<!-- No cu90 or cu90 mkl support -->
</div>

<div class="master">

```bash
pip install mxnet-cu90mkl --pre
```

</div>

</div><!-- End cu90 mkl-on -->


<div class="mkl-off">

<div class="v1-2-0">

<br/>

```
pip install mxnet-cu90
```

</div>

<div class="v1-1-0">

<br/>

```
pip install mxnet-cu90==1.1.0
```

</div>

<div class="v1-0-0">

<br/>

```
pip install mxnet-cu90==1.0.0
```

</div>

<div class="v0-12-0">

<br/>

```
pip install mxnet-cu90==0.12.0
```

</div>

<div class="v0-11-0">
<!-- No cu90 support -->
</div>

<div class="master">

```bash
pip install mxnet-cu90 --pre
```

</div>

</div><!-- End mkl-off -->

</div><!-- End cu90 -->

<!-- ************ Start cu80 ************* -->

<div class="8.0">


<div class="mkl-on">

<div class="v1-2-0">

<br/>

```
pip install mxnet-cu80mkl
```

</div>

<div class="v1-1-0">

<br/>

```
pip install mxnet-cu80mkl==1.1.0
```

</div>

<div class="v1-0-0">

<br/>

```
pip install mxnet-cu80mkl==1.0.0
```

</div>

<div class="v0-12-0">

<br/>

```
pip install mxnet-cu80mkl==0.12.0
```

</div>

<div class="v0-11-0">

<br/>

```
pip install mxnet-cu80mkl==0.11.0
```

</div>

<div class="master">

```bash
pip install mxnet-cu80mkl --pre
```

</div>

</div><!-- End cu90 mkl-on -->


<div class="mkl-off">

<div class="v1-2-0">

<br/>

```
pip install mxnet-cu80
```

</div>

<div class="v1-1-0">

<br/>

```
pip install mxnet-cu80==1.1.0
```

</div>

<div class="v1-0-0">

<br/>

```
pip install mxnet-cu80==1.0.0
```

</div>

<div class="v0-12-0">

<br/>

```
pip install mxnet-cu80==0.12.0
```

</div>

<div class="v0-11-0">

<br/>

```
pip install mxnet-cu80==0.11.0
```

</div>

<div class="master">

```bash
pip install mxnet-cu80 --pre
```

</div>

</div><!-- End mkl-off -->

</div><!-- End cu80 -->

<!-- ***************  Start no cuda *************** -->
<div class="no-cuda">


<div class="mkl-on">

<div class="v1-2-0">

<br/>

```
pip install mxnet-mkl
```

</div>

<div class="v1-1-0">

<br/>

```
pip install mxnet-mkl==1.1.0
```

</div>

<div class="v1-0-0">

<br/>

```
pip install mxnet-mkl==1.0.0
```

</div>

<div class="v0-12-0">

<br/>

```
pip install mxnet-mkl==0.12.0
```

</div>

<div class="v0-11-0">

<br/>

```
pip install mxnet-mkl==0.11.0
```

</div>

<div class="master">

```bash
pip install mxnet-mkl --pre
```

</div>


</div><!-- End cu90 mkl-on -->


<div class="mkl-off">

<div class="v1-2-0">

<br/>

```
pip install mxnet
```

</div>

<div class="v1-1-0">

<br/>

```
pip install mxnet==1.1.0
```

</div>

<div class="v1-0-0">

<br/>

```
pip install mxnet==1.0.0
```

</div>

<div class="v0-12-0">

<br/>

```
pip install mxnet==0.12.1
```

</div>

<div class="v0-11-0">

<br/>

```
pip install mxnet==0.11.0
```

</div>

<div class="master">

```bash
pip install mxnet --pre
```

</div>

</div><!-- End mkl-off -->

</div><!-- End no cuda -->

</div><!-- End python 2.7 -->

</div><!-- End pip -->

</div><!-- End of win, mac, linux with pip -->




<!-- **************************************************** -->
<!-- ******************              ******************** -->
<!-- ****************** Start devices ******************* -->
<!-- ******************              ******************** -->
<!-- **************************************************** -->


<div class="devices">
  <div class="raspberry-pi">

MXNet supports the Debian based Raspbian ARM based operating system so you can run MXNet on Raspberry Pi Devices.

These instructions will walk through how to build MXNet for the Raspberry Pi and install the Python bindings for the library.

The complete MXNet library and its requirements can take almost 200MB of RAM, and loading large models with the library can take over 1GB of RAM. Because of this, we recommend running MXNet on the Raspberry Pi 3 or an equivalent device that has more than 1 GB of RAM and a Secure Digital (SD) card that has at least 4 GB of free memory.

**Install MXNet**

Installing MXNet is a two-step process:

1. Build the shared library from the MXNet C++ source code.
2. Install the supported language-specific packages for MXNet.

**Step 1** Build the Shared Library

On Raspbian versions Wheezy and later, you need the following dependencies:

- Git (to pull code from GitHub)

- libblas (for linear algebraic operations)

- libopencv (for computer vision operations. This is optional if you want to save RAM and Disk Space)

- A C++ compiler that supports C++ 11. The C++ compiler compiles and builds MXNet source code. Supported compilers include the following:

- [G++ (4.8 or later)](https://gcc.gnu.org/gcc-4.8/)

Install these dependencies using the following commands in any directory:

```bash
    sudo apt-get update
    sudo apt-get -y install git cmake build-essential g++-4.8 c++-4.8 liblapack* libblas* libopencv*
```

Clone the MXNet source code repository using the following ```git``` command in your home directory:
```bash
    git clone https://github.com/apache/incubator-mxnet.git --recursive
    cd incubator-mxnet
```

If you aren't processing images with MXNet on the Raspberry Pi, you can minimize the size of the compiled library by building MXNet without the Open Source Computer Vision (OpenCV) library with the following commands:
```bash
    export USE_OPENCV = 0
    make
```

Otherwise, you can build the complete MXNet library with the following command:
```bash
    make
```

Executing either of these commands start the build process, which can take up to a couple hours, and creates a file called ```libmxnet.so``` in the mxnet/lib directory.

If you are getting build errors in which the compiler is being killed, it is likely that the compiler is running out of memory (especially if you are on Raspberry Pi 1, 2 or Zero, which have less than 1GB of RAM), this can often be rectified by increasing the swapfile size on the Pi by editing the file /etc/dphys-swapfile and changing the line CONF_SWAPSIZE=100 to CONF_SWAPSIZE=1024, then running:
```bash
  sudo /etc/init.d/dphys-swapfile stop
  sudo /etc/init.d/dphys-swapfile start
  free -m # to verify the swapfile size has been increased
```

**Step 2** Install MXNet Python Bindings

To install Python bindings run the following commands in the MXNet directory:

```bash
    cd python
    pip install --upgrade pip
    pip install -e .
```

Note that the `-e` flag is optional. It is equivalent to `--editable` and means that if you edit the source files, these changes will be reflected in the package installed.

You are now ready to run MXNet on your Raspberry Pi device. You can get started by following the tutorial on [Real-time Object Detection with MXNet On The Raspberry Pi](http://mxnet.io/tutorials/embedded/wine_detector.html).

*Note - Because the complete MXNet library takes up a significant amount of the Raspberry Pi's limited RAM, when loading training data or large models into memory, you might have to turn off the GUI and terminate running processes to free RAM.*

</div> <!-- End of raspberry pi -->


<div class="nvidia-jetson-tx2">

MXNet supports the Ubuntu Arch64 based operating system so you can run MXNet on NVIDIA Jetson Devices.

These instructions will walk through how to build MXNet for the Pascal based [NVIDIA Jetson TX2](http://www.nvidia.com/object/embedded-systems-dev-kits-modules.html) and install the corresponding python language bindings.

For the purposes of this install guide we will assume that CUDA is already installed on your Jetson device.

**Install MXNet**

Installing MXNet is a two-step process:

1. Build the shared library from the MXNet C++ source code.
2. Install the supported language-specific packages for MXNet.

**Step 1** Build the Shared Library

You need the following additional dependencies:

- Git (to pull code from GitHub)

- libatlas (for linear algebraic operations)

- libopencv (for computer vision operations)

- python pip (to load relevant python packages for our language bindings)

Install these dependencies using the following commands in any directory:

```bash
    sudo apt-get update
    sudo apt-get -y install git build-essential libatlas-base-dev libopencv-dev graphviz python-pip
    sudo pip install pip --upgrade
    sudo pip install setuptools numpy --upgrade
    sudo pip install graphviz jupyter
```

Clone the MXNet source code repository using the following ```git``` command in your home directory:
```bash
    git clone https://github.com/apache/incubator-mxnet.git --recursive
    cd incubator-mxnet
```

Edit the Makefile to install the MXNet with CUDA bindings to leverage the GPU on the Jetson:
```bash
    cp make/crosscompile.jetson.mk config.mk
```

Edit the Mshadow Makefile to ensure MXNet builds with Pascal's hardware level low precision acceleration by editing 3rdparty/mshadow/make/mshadow.mk and adding the following after line 122:
```bash
MSHADOW_CFLAGS += -DMSHADOW_USE_PASCAL=1
```

Now you can build the complete MXNet library with the following command:
```bash
    make -j $(nproc)
```

Executing this command creates a file called ```libmxnet.so``` in the mxnet/lib directory.

**Step 2** Install MXNet Python Bindings

To install Python bindings run the following commands in the MXNet directory:

```bash
    cd python
    pip install --upgrade pip
    pip install -e .
```

Note that the `-e` flag is optional. It is equivalent to `--editable` and means that if you edit the source files, these changes will be reflected in the package installed.

Add the mxnet folder to the path:

```bash
    cd ..
    export MXNET_HOME=$(pwd)
    echo "export PYTHONPATH=$MXNET_HOME/python:$PYTHONPATH" >> ~/.bashrc
    source ~/.bashrc
```

You are now ready to run MXNet on your NVIDIA Jetson TX2 device.

</div> <!-- End of jetson -->
</div> <!-- End of devices -->



## Source Download

<a href="download.html">Download</a> your required version of MXNet.
