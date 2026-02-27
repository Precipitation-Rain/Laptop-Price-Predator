#base image
FROM python:3.10-slim

# setting working directory
WORKDIR /.app

# copy all requirements
COPY requirements.txt .

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# copy all files
COPY . .

# expose port
EXPOSE 8501

# run the app
CMD ["streamlit", "run", "app.py", "--server.address=0.0.0.0", "--server.port=8501"]