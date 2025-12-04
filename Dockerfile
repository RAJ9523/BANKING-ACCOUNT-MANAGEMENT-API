# Use lightweight python image
FROM python:3.10-slim

# Set working directory
WORKDIR /api-flask

# Install system dependencies (optional but useful)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy folder assets
#COPY static/ /api-flask/static/
#COPY util/ /api-flask/util/

# Copy configuration files


# Expose port
EXPOSE 5000

# Run the app
CMD ["python", "application.py"]
