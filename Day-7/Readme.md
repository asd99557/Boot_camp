## Statefulset
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