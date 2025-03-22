#!/bin/bash

# check team-a namespace
kubectl hns tree team-a
# check team-a namespace
kubectl auth can-i list pods --as=system:serviceaccount:team-a:viewer-sa -n team-a
# check app-a namespace
kubectl auth can-i list pods --as=system:serviceaccount:team-a:viewer-sa -n app-a