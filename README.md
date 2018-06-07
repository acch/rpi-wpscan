# rpi-wpscan

[![GitHub Issues](https://img.shields.io/github/issues/acch/rpi-wpscan.svg)](https://github.com/acch/rpi-wpscan/issues) [![GitHub Stars](https://img.shields.io/github/stars/acch/rpi-wpscan.svg?label=github%20%E2%98%85)](https://github.com/acch/rpi-wpscan/) [![Docker Pulls](https://img.shields.io/docker/pulls/acch/rpi-wpscan.svg)](https://hub.docker.com/r/acch/rpi-wpscan/) [![License](https://img.shields.io/github/license/acch/rpi-wpscan.svg)](LICENSE)

The [wpscanteam/wpscan](https://hub.docker.com/r/wpscanteam/wpscan/) image built with [knjcode/rpi-ruby](https://hub.docker.com/r/knjcode/rpi-ruby/) as base - in order to make WPScan run on the Raspberry Pi.

## Usage

WPScan is a black box WordPress vulnerability scanner. Refer to [https://wpscan.org/](https://wpscan.org/) for a list of available options.

Simply run a temporary container from the Docker image in order to test your Wordpress site:

```
docker run --rm acch/rpi-wpscan -u http://myblog.com
```

## References

- [knjcode/rpi-ruby](https://github.com/knjcode/rpi-ruby)
- [wpscanteam/wpscan](https://github.com/wpscanteam/wpscan)

## Copyright

Copyright 2017 Achim Christ, released under the [MIT license](LICENSE)
