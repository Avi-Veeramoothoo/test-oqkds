# Deployment

You can run OpenQKDSecurity using 3 methods. Each is a solution to a different use case, so use the pros/cons list to evaluate your situation and pick the best method for you. The tradeoffs usually consider the computational power, ease of access and dependency conflicts.


## Local desktop (Recommended for regular use)

If you have followed the installation process, then you can open your Matlab on your desktop and navigate to the path of the OpenQKDSecurity folder to run a local instance of the project.


> **PROS**

>  * The local instance works with all 4 dependencies, assuming you install MOSEK and require it.

> **CONS**

>  * The packages may require different versions, that are in conflict with current versions installed on your desktop needed to run other projects. 



## Online IDE

You can use OpenQKDSecurity from an online IDE without requiring any installation. 

* Visit this website and login using your Matlab Online account credentials.

* Run `installDependencies.m` and `addPath.m` before using the IDE.

> **PROS**

>  * The online IDE requires no installation on the user's part. It's convenient for temporary usage from any device with internet access.

> **CONS**

>  * It does not have the MOSEK package (4th dependency) installed due to requiring an individual user license -- although MOSEK is optional for OpenQKDSecurity.



## Packaged container

OpenQKDSecurity packaged as a container is a solution for dependency conflicts of Matlab packages. You can also spin up multiple instances of the container using the script we provide.

* Ensure that you have Docker Engine and Python installed.

* Download the script and run `py OpenQKDSecurity.py --install` to download OpenQKDSecurity and the first 3 dependencies. 

* Run `py OpenQKDSecurity.py --spinup` to launch a container and `py OpenQKDSecurity.py --spindown` to kill it after use if no longer needed.

* Login using your Matlab Online account credentials, and for the first time run `installDependencies.m` and `addPath.m`.

> **PROS**

>  * Containerized OpenQKDSecurity allows you to run the project independent of the versions of Matlab and dependencies installed on your local desktop. For example, OpenQKDSecurity requires Matlab >= 2020b and QETLAB > v0.9. You can still run your other projects requiring lower versions of Matlab/QETLAB while running OpenQKDSecurity as a self-contained package with the higher versions. You do need to resolve dependency conflicts.

>  * The packaged container is lightweight in terms of memory compared to the local desktop (500MB vs ~4.5GB).

> **CONS**

>  * Packaged container is a bit more advanced, requiring knowledge of the command line to run a python script that will launch the container.

>  * It does not have the MOSEK package (4th dependency) installed due to requiring an individual user license -- although MOSEK is optional for OpenQKDSecurity.