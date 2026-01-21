# DevOps Project 

**📁 Google Drive Repository (project files, items, and descriptions):**  
[https://drive.google.com/drive/folders/1VcZe2fjwNAaCPLafSkfivvvch8x5Ts7P?usp=sharing](https://drive.google.com/drive/folders/1VcZe2fjwNAaCPLafSkfivvvch8x5Ts7P?usp=sharing)

**🌐 Public Web Application URL:**  
[https://devops-project-kvjm.onrender.com/](https://devops-project-kvjm.onrender.com/)

This project demonstrates a complete DevOps pipeline, combining application deployment, monitoring, automated testing, and performance testing.

## Project Overview
The goal of this project was to build, deploy, test, and monitor a web application using common DevOps tools and best practices.

## Technologies Used
- Git & GitHub
- Jenkins (CI/CD)
- Apache Tomcat
- Render (Application hosting)
- Gatling (Load / Stress / Max tests)
- Selenium (UI automated tests)
- UptimeRobot (Monitoring)

## Pipeline Flow
1. Pull source code from GitHub
2. Deploy the application to Tomcat
3. Trigger deployment on Render
4. Verify service availability using UptimeRobot API
5. Run Selenium automated UI tests
6. Run Gatling performance tests:
   - Load Test
   - Stress Test
   - Max Capacity Test

## Performance Testing
We implemented three Gatling simulations:
- **Load Test** – gradual increase to a stable number of users
- **Stress Test** – pushing the system beyond its limits
- **Max Test** – finding the maximum supported capacity

All tests are executed automatically as part of the Jenkins job.

## Results
- Successful automated deployment
- Stable application behavior under load
- Clear identification of system limits
- Full CI/CD flow with testing and monitoring

## Conclusion
This project demonstrates an end-to-end DevOps process, from code commit to deployment, testing, and monitoring, all fully automated.
