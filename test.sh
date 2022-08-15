#!/bin/bash

if [[ -z '"[{"name" :" Allure Report","link": "https://storage.googleapis.com/workiz-qa-reports/allure-report-${{env.PLATFORM}}-${{env.APPHASH}}/index.html"},
                      {"name": " Link to GitHub Action" , "link" : "https://github.com/Workiz/native-automation/actions/runs/${{github.run_id}}"}]"' ]]; then
  echo "hi"
else
  echo "here"
fi