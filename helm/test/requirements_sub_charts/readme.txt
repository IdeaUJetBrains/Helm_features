(https://docs.helm.sh/developing_charts/#the-chart-repository-guide)

1.
create a folder with packaged charts
helm package mychart

2. Index local repositories, run in this folder:
helm repo index "C:\Users\Olga Pavlova\IdeaProjects\ALL_K8TS_PROJECTS\Helm_features\helm\test\requirements_sub_charts"

3. push all this into the repository

4. add this repo into the list of repos on minikube
helm repo add

5. go to the chart and run
helm dependency update

View all your repositories:
helm repo list

Add chart from any other repository into the local repository:
helm repo add child1child http://127.0.0.1:8879/charts
