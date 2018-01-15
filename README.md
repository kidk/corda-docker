# corda-docker
Based on Alphine, non-root user and tested in Kubernetes and OpenShift.

## Usage
Certificates, plugins and node.conf should be added to child images or mounted as volumes on container.

## Supported tags and respective `Dockerfile` links
* master
* `v1.0` [_(v1.0/Dockerfile)_](https://github.com/bluebankio/corda-docker/blob/b76268e007cdd9ad135d3d124d18f5ba684f0031/Dockerfile)
* `v2.0` [_(v2.0/Dockerfile)_](https://github.com/bluebankio/corda-docker/blob/45adfc2a1e2f46958c8f22ae69e23160cc0d96e3/Dockerfile)

## Quick reference
Documentation: [Corda Docs v1.0](https://docs.corda.net/releases/release-V1.0/) or [Corda Doc v2.0](https://docs.corda.net/releases/release-V2.0/)

Where to get help: [Corda Community Slack](https://slack.corda.net/), [Corda Discourse Forum](https://discourse.corda.net/)

Where to file issues: [Github Issues page](https://github.com/corda/corda-docker/issues?q=is%3Aopen+is%3Aissue)

Maintained by: bluebank.io

## What is Corda?
A distributed ledger made up of mutually distrusting nodes would
allow for a single global database that records the state of deals and obligations
between institutions and people. This would eliminate much of
the manual, time consuming effort currently required to keep disparate
ledgers synchronised with each other. It would also allow for greater levels
of code sharing than presently used in the financial industry, reducing
the cost of financial services for everyone

https://docs.corda.net/

![](https://camo.githubusercontent.com/a7b7d659d6e01a9e49ff2d9919f7a66d84aac66e/68747470733a2f2f7777772e636f7264612e6e65742f77702d636f6e74656e742f75706c6f6164732f323031362f31312f66673030355f636f7264615f622e706e67)

## Using this image
### Starting up the image
* `docker build -t corda . ` - this will create a base image called "corda"
* `docker run -it --rm --name corda corda ` - this will start up an interactive container using the base image you built

### Adding more to the base image
If you want to do more than what the base image does, please follow the below steps.
* Create a new `Dockerfile`
* Put `FROM bluebankio/corda-docker` at the start
* Then add your changes after this.

This will allow you to use this image as the base and add your changes ontop.

## Image Variants
### corda: {version} (latest)
This is the default image, enough to get you started. If you want to do more than what is in this image, please use the steps mentioned above.

### corda:v1.0
This image is using corda v1.0 as the base. Please see [here](https://docs.corda.net/releases/release-V1.0/) for further information on v1.0 of corda.

### corda:v2.0
This image is using corda v1.0 as the base. Please see [here](https://docs.corda.net/releases/release-V2.0/) for further information on v2.0 of corda.

## Acknowledgments and Authors
This project is acknowledges the work done [here](https://github.com/corda/corda-docker) by [Wawrzek](https://github.com/wawrzek), [Ben Abineri](https://github.com/benabineri), [przemolb](https://github.com/przemolb) and [Gary Rowe](https://github.com/gary-rowe).

Authors:
- Ben W 
- Fuzz P
- Mark S
- Richard C
- Ramiz A
- Sal B

## License

View [license information](LICENSE) for the software contained in this image.

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.