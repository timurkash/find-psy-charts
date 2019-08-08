.PHONY: init
init:
	git init
	git add .
	git remote add origin https://github.com/timurkash/find-psy-charts.git
	git commit -m "Init"
	git push origin master
.PHONY: commit
commit:
	git add .
	git commit -m "next"
	git push -u origin master
.PHONY: package
packageall:
	helm package configmap nginx router sfpostgres stateless
	helm repo index ./ --url https://timurkash-charts.gitlab.io/helm/