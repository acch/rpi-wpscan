# rpi-wpscan

The wpscanteam/wpscan image built with knjcode/rpi-ruby as base - in order to make WPScan run on the Raspberry Pi.

WPScan is a black box WordPress vulnerability scanner. Refer to [https://wpscan.org/](https://wpscan.org/) for a list of available options.

## Usage

Simply run a temporary container from the docker image in order to test your Wordpress site:

```
docker run --rm acch/rpi-wpscan -u http://myblog.com
```

## References

- [knjcode/rpi-ruby](https://github.com/knjcode/rpi-ruby)
- [wpscanteam/wpscan](https://github.com/wpscanteam/wpscan)
