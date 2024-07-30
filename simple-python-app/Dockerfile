# Use the official Python image.
# https://hub.docker.com/_/python
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5500 available to the world outside this container
EXPOSE 5500

# Run app.py when the container launches
CMD ["python", "app.py"]

