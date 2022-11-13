helm-template:
	helm template \
		-f infra/helm/staging.yaml \
		-n staging \
		mongodb-listener workiz-helm-repo/workiz-chart  \
		--devel

helm-dry-run:
	helm -n staging upgrade --install mongodb-listener workiz-helm-repo/workiz-chart  \
          -f infra/helm/staging.yaml  \
          --atomic \
          --timeout 600s \
          --devel --debug --dry-run