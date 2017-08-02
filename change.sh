cd deployments/default/nginx
grep -l -r "image: nginx" . | xargs sed -i  's|.*image: nginx.*|        image: nginx:1.12-alpine|g'

cd ../../../secrets/default
grep -l -r "test" . | xargs sed -i 's|.*test.*|test2|g'

#cd deployments/default/nginx
#grep -l -r "replicas: " . | xargs sed -i 's|.*replicas\:.*|  replicas\: 20|g'
