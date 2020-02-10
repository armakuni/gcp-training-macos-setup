# AK MacOS Setup

This repo contains two scripts, one that will install useful applications and utilities on MacOS.
The other script will be used to create a training workspace on your computers and fork the required repositories to your remote gitHub accounts.

### What will be installed?
- Homebrew
- Google Cloud SDK
- Git
- Git-crypt
- Docker
- Pip
- RBEnv
- hub

---
## How do I run it?

#### If you have git installed already and it is connected to your personal gitHub account

``` sh
git clone git@github.com:armakuni/gcp-training-macos-setup.git
```

##### If you haven't got git installed already

Download the zip file: https://github.com/armakuni/gcp-training-macos-setup/archive/master.zip

``` sh
unzip -d ~/Downloads/ ~/Downloads/gcp-training-macos-setup.zip
```

---
## Execution Instructions

***Note:*** This command will create an ```ak-gcp-repositories``` folder in your home directory inside which the required repositories will be installed.

Run below command to install the necessary applications to complete GCP Training and fork the repositories you will be using in the exercises:

```sh
make setup
```

Once the applications are installed, follow the instructions in the exercise guide to complete the configurations.

Note: If you are running this script in a new MAC you might be prompted to install CLI Tool and allow execution of the script.

---
## Cleaning up your workspace


***Note:*** _Only run this command at the end of the training workshop when you have completed the microservices project_

To remove the repositories from your local machine and remote gitHub run the below command.

***Note:*** For this command to work, you need to have given the hub token in your gitHub profile the _delete_repo_ permission

```sh
make cleanup-workspace
```