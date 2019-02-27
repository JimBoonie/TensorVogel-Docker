# Use a parent image
FROM tensorflow/tensorflow:latest-gpu

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Install PythonHelpers functions
RUN apt update
RUN apt install git-all -y
RUN git clone https://github.com/JimBoonie/PythonHelpers.git
RUN pip install ./PythonHelpers

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME Vogel

# Mount environment volume
# VOLUME [ "/vogelvol"]

# Run app.py when the container launches
# CMD ["python", "examples/hellotensorvogel.py"]
CMD ["sh", "run_jupyter.sh"]