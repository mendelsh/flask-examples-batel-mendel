FROM python:3.6
WORKDIR /app

# Install the application dependencies
COPY . ./
RUN pip install --no-cache-dir -r requirements.txt
WORKDIR /app/http
EXPOSE 5000
CMD ["flask", "run","--host=0.0.0.0"]
