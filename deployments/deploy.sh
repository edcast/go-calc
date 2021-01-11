kubectl delete -f go_calc_deployment.yaml
kubectl delete -f go_calc_service.json
kubectl apply -f go_calc_deployment.yaml
kubectl apply -f go_calc_service.json