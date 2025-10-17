FROM python:3.11-slim

# System deps
RUN apt-get update && apt-get install -y \
    git build-essential cmake && \
    rm -rf /var/lib/apt/lists/*

# Clone repo
RUN git clone --depth=1 https://github.com/thammegowda/nllb-serve.git /app
WORKDIR /app

# Install dependencies (editable install, recommended)
RUN pip install --no-cache-dir --upgrade pip setuptools wheel && \
    pip install --no-cache-dir -e .

# Default env
ENV MODEL=facebook/nllb-200-distilled-600M
ENV PORT=6060

EXPOSE 6060

# ✅ Launch the proper entrypoint
CMD ["python", "-m", "nllb_serve", "--model", "facebook/nllb-200-distilled-600M", "--port", "6060"]
