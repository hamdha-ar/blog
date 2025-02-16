# Use an official lightweight Python image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all application files into the container
COPY . .

# Expose the port Flask runs on
EXPOSE 5000

# Set environment variables for Flask
ENV FLASK_APP=main.py
ENV FLASK_RUN_HOST=0.0.0.0

# Run the Flask application
CMD ["flask", "run"]
