# Use a Python 3.11 slim image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy the application files to the container
COPY . /book_catalog.

# Install the required dependencies
RUN pip install -r requirements.txt

# Expose the port where FastAPI will run
EXPOSE 8080

# Command to run the FastAPI app with Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
