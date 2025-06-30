# DailyLogAPI
record daily activity

## Running NapCat
The repository includes a Docker setup for the NapCat chatbot. To start the service, run:

```bash
./start_napcat.sh
```

This script writes a `.env` file with the current user and group IDs, ensures a persistent data directory `napcat_data/` exists, and then starts the container defined in `docker-compose.yml`.

Once started, open [http://localhost:6099/webui](http://localhost:6099/webui) in your browser to scan the QR code for login.
