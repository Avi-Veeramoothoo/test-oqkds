# Installation

## Prerequisites

Before installing the software, ensure you have the latest version of MATLAB installed on your machine.
Our software requires *at least version 2020b* for full functionality, but installing the latest version is preferable.


## OpenQKDSecurity package

To install the OpenQKDSecurity package, download the repository on GitHub as a zip file and unzip it to a preferred directory. This can be done on the main page of the repository by pressing the green “Code” button at the top of the page and then selecting ["Download ZIP"](https://github.com/JBurniston/openQKDSecurityV2/archive/refs/heads/main.zip).


## Dependencies

Our software has the following dependencies for its default settings:

- [CVX](https://cvxr.com/cvx/download) v2.2, a library for solving convex optimization problems in MATLAB.
- [QETLAB](https://github.com/nathanieljohnston/QETLAB) *above* v0.9, a MATLAB toolbox for operations involving quantum channels and entanglement. Note that you cannot use the version from their website as it has bugs associated with implementing Choi matrices. *You must use their latest copy on GitHub*. At the time of writing, this means downloading their code with the green "code" button and *not* the v0.9 release.
- [ZGNQKD](https://www.math.uwaterloo.ca/~hwolkowi/henry/reports/ZGNQKDmainsolverUSEDforPUBLCNJuly31) solver (optional), an alternative to our Frank-Wolfe solver for quantum relative entropy. Currently, it only supports equality constraints. Download the zip and the "Solver" folder and sub-folders to your path.
- [MOSEK](https://www.mosek.com) (optional), a more advanced semidefinite programming (SDP) solver than the default (SDPT3) used in CVX. Note that the MOSEK solver can be downloaded together with CVX, but requires a separate license to use. See [this page](https://cvxr.com/cvx/doc/mosek.html) for more information.

To install CVX, QETLAB and ZGNQKD, you can run `installDependencies.m` to automate their installation. For MOSEK, you need to install it manually to input its license. Alternatively, you can install all 4 manually. Please refer to the documentation of each of these software packages for installation instructions.


## Saving installation

Next, ensure that our software and the above dependencies are on your MATLAB path. To place a folder on your path, navigate to it in MATLAB, then right-click and select "Add to Path > Selected folder and Subfolders". Make sure you do this for OpenQKDSecurity, QETLAB, and CVX. We also recommend you run "cvx_setup" to check if CVX is properly configured and which solvers are available.

Before you close MATLAB, go to "Home > Environment > Set Path" and click "save" at the bottom. If you don't, then you have to add everything to your path each time you restart MATLAB.

> **IMPORTANT**  
> We strongly encourage you to run `testInstall.m` at this point to check for basic installation issues.

