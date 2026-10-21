# n8n Starter Kit

A ready-to-run local [n8n](https://n8n.io) setup bundled with ~1,900 pre-imported
workflow templates covering Telegram, Gmail, Google Sheets, Slack, Airtable,
and hundreds of other integrations.

## Quick Start

### Windows
Double-click **`Start-n8n.bat`**.

### macOS / Linux
```bash
chmod +x start.sh
./start.sh
```

Both scripts will:
1. Check for [Node.js](https://nodejs.org) (install it first if missing)
2. Install `n8n` globally via npm if it isn't already installed
3. Import every workflow in `workflows/` on the first run only
4. Start n8n at **http://localhost:5678**

Keep the terminal window open while you use n8n — closing it stops the server.

## First login

On first visit to `http://localhost:5678` you'll be asked to create an owner
account (email + password). This is local only — nothing is sent anywhere.

## What's included

All imported workflows are **inactive** and have **no credentials attached**.
They're a reference library: open one, add your own credentials
(Gmail, Telegram, Slack, etc.), and activate it when you're ready to use it.

## Re-importing

The scripts only import once (tracked by a local `.imported` marker file).
To force a re-import, delete `.imported` and run the script again.

## License

Workflow templates are sourced from community collections, each under its
own license (see individual workflow authors). This repo's scripts are MIT
licensed.
