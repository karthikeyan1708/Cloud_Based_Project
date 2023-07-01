# Use an official Python runtime as the base image
FROM python:3.9.3



# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY . .

# Expose the port that the Streamlit application will run on
EXPOSE 8501

# Run the Streamlit application
CMD ["streamlit", "run", "--server.port", "8501", "app.py"]
