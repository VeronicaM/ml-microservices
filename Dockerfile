FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /usr/src/

## Step 2:
# Copy source code to working directory
ADD . /usr/src/

## Step 3:
# Install packages from requirements.txt
RUN make install
# hadolint ignore=DL3013

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python3","app.py"]
