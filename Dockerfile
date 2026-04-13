FROM python:3.11

# Set working directory
WORKDIR /app

# Copy project files
COPY . /app

# Add project to Python path
ENV PYTHONPATH=/app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Start server
CMD ["daphne", "core.asgi:application", "--bind", "0.0.0.0", "--port", "8000"]
