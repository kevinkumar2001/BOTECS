# Use the official Python image from the Docker Hub
FROM ubuntu:latest
# Set the working directory in the container
RUN apt-get update && apt-get install -y
RUN apt-get install python3 -y
RUN apt-get install pip -y

WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

RUN pip install --upgrade pip
# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Expose port 80 to the outside world
EXPOSE 80

# Start the Flask server
CMD ["python", "BOTECS.py"]
