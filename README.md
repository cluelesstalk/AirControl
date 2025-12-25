# AirControl

A small utility collection for working with wireless adapters.

Script: [airctl.zsh](airctl.zsh)

## Description

`airctl.zsh` queries the system network interfaces under `/sys/class/net` and
lists any wireless (Wi‑Fi) adapters it finds.

## Usage

Make the script executable and run it:

```bash
chmod +x airctl.zsh
./airctl.zsh
```

## Behavior

- If no wireless interfaces are found the script prints "No Wi-Fi adapters detected" and exits.
- If one or more wireless adapters are present the script prints "Available Wi-Fi adapters:" followed by the interface names (for example: `wlan0`, `wlan1`).

## License

This project is licensed under the MIT License: [LICENSE](LICENSE)
