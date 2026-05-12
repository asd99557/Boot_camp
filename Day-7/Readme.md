## Statefulset
- StatefulSet is a Kubernetes workload controller used to manage stateful applications where each Pod needs a stable hostname, persistent storage, and ordered deployment/scaling.

- Manages the deployment and scaling of a set of Pods, and provides guarantees about the ordering and uniqueness of these Pods.

- Stable, unique network identifiers.
- Stable, persistent storage.
- Ordered, graceful deployment and scaling.
- Ordered, automated rolling updates.

## Pod Selector:
- You must set the .spec.selector field of a StatefulSet to match the labels of its .spec.template.metadata.labels. Failing to specify a matching Pod Selector will result in a validation error during StatefulSet creation.


## Headless service
- Headless services: Direct connect to pod using DNS (Create DNS entry at pod level)
- Addtional value mantioned clusterIP:none 
- Creating headless service using this format
: Podname > Headless-service > namespace.svc > cluster-domain.example


- Create Headless Service
![alt text](images/Picture18.png)
- Deploy MySQL StatefulSet
- Apply All Manifests
![alt text](images/Picture19.png)
- Verify Catalog App Logs – Ensure It Connects to MySQL Database
![alt text](images/Picture20.png)
- Test DNS Resolution
![alt text](images/Picture21.png)

- Scale Up – Ordered Pod Creation
![alt text](images/Picture22.png)
- Scale Down – Reverse Order Deletion
![alt text](images/Picture23.png)