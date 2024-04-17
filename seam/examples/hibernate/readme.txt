Seam Hibernate Example
=======================

This is the Hotel Booking example implemented in Seam and Hibernate POJOs.

JBoss EAP 5:
  * Install JBoss AS with the default profile
  * ant jboss
  * Start JBoss AS 
  * Access the app at http://localhost:8080/jboss-seam-hibernate/
  * ant jboss.undeploy

Tomcat with embeddable JBoss:
  * Install Tomcat
  * Install Embeddable JBoss
  * ant jboss-embedded
  * Deploy dist-jboss-embedded/jboss-seam-hibernate.war
  * Start Tomcat
  * Access the app at http://localhost:8080/jboss-seam-hibernate/
