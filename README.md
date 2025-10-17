# NLLB API Docker

This repository contains a Docker setup for running the [NLLB serve](https://github.com/thammegowda/nllb-serve). The NLLB API provides access to machine translation models developed by Meta AI.

## Setup

To set up the NLLB API using Docker, follow these steps:

1. **Clone the Repository**
```bash
git clone https://github.com/jonaaix/nllb-api-docker.git
cd nllb-api-docker
```
2. **Start the Docker Container**
```bash
docker-compose up
```

## Usage
Once the Docker container is running, you can access the NLLB API or browser UI at `http://localhost:8123`.

### Example API Request
```shell
curl -H "Content-Type: application/json" -X POST \
  http://127.0.0.1:8123/translate \
  --data '{
    "source": ["Hallo Welt, dies ist ein Test."],
    "src_lang": "deu_Latn",
    "tgt_lang": "fra_Latn"
  }'
```

## References
- [NLLB Serve GitHub Repository](https://github.com/thammegowda/nllb-serve)