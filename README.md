# Connection Monitor

Connection Monitor is a lightweight Linux observability tool that continuously
monitors active TCP connections and processes using network sockets.

This project builds on Linux concepts such as:

- file descriptors
- sockets
- system monitoring
- real-time data observation

---

## Features

- Displays active TCP connections
- Shows top processes using sockets
- Updates output in real-time
- Handles idle systems gracefully

---

## Example Output


===== Connection Monitor =====

Active TCP connections: 0

Top processes using sockets:
No active socket processes

Updated: 13:52:45


---

## Usage

```bash
chmod +x connection_monitor.sh
./connection_monitor.sh

