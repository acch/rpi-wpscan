# rpi-wpscan

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
Copyright 2017 Achim Christ
