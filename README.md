[![CircleCI](https://circleci.com/gh/VeronicaM/ml-microservices/tree/master.svg?style=svg)](https://circleci.com/gh/VeronicaM/ml-microservices/tree/master)

## Project Overview
 This Project is a Machine Learning Microservice API based on a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). 
 
### Project Commands and Capabilities

* **Lint**: Linting with pylint for python files and hadolint for Dockerfile. Can be run with the command `make lint` in the project root
* **Containerization**: Dockerfile is based on a preconfigured  python:3.7.3-stretch docker image and allows you to run the main app in a containerized way through the command `./run_docker.sh` in the root folder.
* **Uploading Docker** to DockerHub can be done through the command `./upload_docker.sh` in the root folder. Update the file to fill in your docker account name and image details
* **Kubernetes**: You can run this API in Kubernetes for high availability containerization through the `./run_kubernetes.sh` command in the root folder

The API endpoint is setup with Flask in the app.py. The model is in the `model_data` folder. You can see a prediction result example in the `output_txt_files` folder. To get your own predictions setup and run the project with either Docker or Kubernetes and run `./make_prediction.sh` to hit the API endpoint with a customized HTTP request params. 

**Note** This project is compatible wtih Python 3.7.5. This will not work with Python 3.8 due to incompatibilities in sklearn. You can manage your Python version using [pyenv](https://realpython.com/intro-to-pyenv/) 

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
