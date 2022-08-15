#!/bin/bash

if [[ -z "[{'name' :' Allure Report','link': 'https://storage.googleapis.com/workiz-qa-reports/allure-report--/index.html'}, {'name': ' Link to GitHub Action' , 'link' : 'https://github.com/Workiz/native-automation/actions/runs/2859087204'}]" ]]; then
  echo "hi"
else
  echo "here"
fi