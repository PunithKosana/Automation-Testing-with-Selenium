# Use the official Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the local directory contents into the container
COPY . /app

# Install Python dependencies (Selenium and any others specified in requirements.txt)
RUN pip install --no-cache-dir -r requirements.txt

# Expose any ports if your project needs it (e.g., if serving the website)
EXPOSE 5000

# Command to run the Selenium script or the website (adjust based on your project)
# For example, to run Selenium tests
CMD ["python", "test_selenium_script.py"]
