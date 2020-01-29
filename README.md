# AK MacOS Setup

This repo contains a script that will install useful applications and utilities on MacOS.

### What will be installed?
- Homebrew
- Google Cloud SDK
- Git
- Git-crypt
- Docker
- Pip
- RBEnv

### How do I run it?

##### If you have git installed already

``` sh
git clone git@github.com:armakuni/gcp-training-macos-setup.git
```

##### If you haven't got git installed already

Download the zip file: https://github.com/armakuni/gcp-training-macos-setup/archive/master.zip

``` sh
unzip -d ~/Downloads/ ~/Downloads/gcp-training-macos-setup.zip
```

#### Execution Instructions

Run below command to install the necessary applications to complete GCP Training.
```sh
make install-packages
```

Once the applications are installed, follow the instructions in the exercise guide to complete the configurations.

Note: If you are running this script in a new MAC you might be prompted to install CLI Tool and allow execution of the script.

#### Execution with predefined git and vim config (Not required for GCP Training)

This command sets a predefined git and vim config at the time of installation.
```sh
make setup
```