#!/bin/bash

echo "Pulling latest code..."
git pull origin main

echo "Building project..."
mvn clean package

echo "Deploying to Tomcat..."
cp target/*.war /opt/tomcat/webapps/

echo "Deployment completed"
