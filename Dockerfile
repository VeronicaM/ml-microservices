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
RUN wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 
RUN chmod +x /bin/hadolint

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python3","app.py"]
