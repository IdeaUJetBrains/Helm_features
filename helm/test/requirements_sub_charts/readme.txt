Test project:
https://github.com/IdeaUJetBrains/Helm_features/
Spec: https://docs.helm.sh/developing_charts/#the-chart-repository-guide

========================================================================================
A chart repository consists of packaged charts and a special file called index.yaml
========================================================================================

1. Create packaged charts:
-package some charts:
    helm package child1child
    helm package child2
-index these packaged charts (build index.yaml file with the list of all charts:):
    helm repo index "C:\Users\Olga Pavlova\IdeaProjects\ALL_K8TS_PROJECTS\Helm_features\docs"

//----later----------------//
helm package child1
helm package parent_chart
//------------------------//


2. Create repo
(https://github.com/kubernetes/helm/blob/master/docs/charts.md
https://docs.helm.sh/developing_charts/#quickstart)

-create  docs/ folder in the root of the project
-move packaged charts and index file into docs/ folder
-push it to github
-go to github->Settings of this project->
go to GitHubPages on this page ->choose this "docs" in the combobox


3. Add this repo into locally available helm repos:
    helm repo add Helm_features https://ideaujetbrains.github.io/Helm_features/

So, i have repo here: https://ideaujetbrains.github.io/Helm_features/

============================================

4. Add into the repo the parent of child1child

-to download charts from requirement.yaml from the repo: go to the folder where is our "child1" chart and run:
   helm dependency update child1
   Result: appears  charts/ sub-folder with the packaged "child1child" chart
-package it:  helm package child1
-move this file into /docs
-update index: helm repo index "C:\Users\Olga Pavlova\IdeaProjects\ALL_K8TS_PROJECTS\Helm_features\docs"
-push files: the packaged chart (child1-2.tgz) and the new index.yaml

Now do the same with "parent_chart":
-helm dependency update parent_chart
-helm package parent_chart
-move
-update index: helm repo index "C:\Users\Olga Pavlova\IdeaProjects\ALL_K8TS_PROJECTS\Helm_features\docs"
-push

//=========================================================================================//

To view available repos:
helm repo list

To view repo charts:
helm repo search https://ideaujetbrains.github.io/Helm_features/