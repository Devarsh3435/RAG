FROM python:3.11-slim

# set working directory inside container
WORKDIR /app

# copy dependency list first (important for caching)
COPY requirements.txt .

# install python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# copy rest of the application code
COPY . .

# expose flask default port
EXPOSE 5000

# command to run the app
CMD ["python", "app.py"]
