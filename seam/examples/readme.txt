Seam Example Applications
=========================
This directory contains the Seam example applications, which have all been
tested on the latest release of JBoss EAP 5. Consult the readme.txt file in each of the examples to
see which additional servers the example supports.

Below is a list of examples with a brief description. The name of the example,
refered to later as ${example.name}, is equivalent to the name of the folder
unless the folder name begins with seam, in which case the prefix "seam" is
omitted (i.e. seamspace -> space).


blog/                 The Seam blog example, showing how to write
                      RESTful applications using Seam.

booking/              The Seam Booking demo application for EJB 3.0.

contactlist/          The Seam Contact List demo demonstrating use
                      of the Seam application framework.
                      
drools/               A version of the number guessing example that
                      uses Drools with jBPM.

dvdstore/             The Seam DVD Store demo demonstrating jBPM 
                      support in Seam.

excel/                Demo of excel export support.
                      
groovybooking/        The Seam Booking demo ported to Groovy.

hibernate/            The Seam Booking demo ported to Hibernate3.

itext/                A demo of the Seam iText integration for generating PDFs.
                      
jee5/booking          The Seam Booking demo ported to the Java EE 5 platforms.
                      
jee5/remoting         The Seam remoting helloworld demo ported to the Java EE 5 
                      platforms.

jpa/                  An example of the use of JPA (provided by Hibernate), runs
                      on many platforms, including non-EE 5 platforms (including
                      plain Tomcat).
                      
mail/                 The Seam mail example demonstrating use of 
                      facelets-based email templating.

messages/             The Seam message list example demonstrating use 
                      of the @DataModel annotation.
                      
nestedbooking/        The booking example modified to show the use of nested
                      conversations.

numberguess/          The Seam number guessing example, demonstrating
                      jBPM pageflow.

quartz/               A port of the Seampay example to use the Quartz dispatcher.

registration/         A trivial example for the tutorial.

remoting/chatroom/    The Seam Chat Room example, demostrating Seam remoting.

remoting/gwt/         An example of using GWT with Seam remoting.

remoting/helloworld/  A trivial example using Ajax.
                      
seambay/              An example of using Seam with Web Services.

seamdiscs/            Demonstrates Seam, Trinidad, Ajax4jsf and Richfaces.

seampay/              The Seam Payments demo demonstrating the use of
                      asynchronous methods.
                
seamspace/            The Seam Spaces demo demonstrating Seam security.

spring/               Demonstrates Spring framework integration.

tasks/				  Demonstrates RESTEasy integration.

todo/                 The Seam todo list example demonstrating
                      jBPM business process management.
                      
ui/                   Demonstrates some Seam JSF controls.


Deploying and Testing an Example Application
============================================

These are general instructions for deploying Seam examples. Take a look at the 
readme.txt in the example to see if there are any specific instructions.

How to Build and Deploy an Example on JBoss EAP
----------------------------------------------

1. Open the "build.properties" file at the root of the Seam distribution in
   your editor and change jboss.home to point to your JBoss AS directory
   (the examples are deployed to the default profile)

2. (Optional) Build Seam by running "ant" the Seam root directory
   Only required if you are working from an SVN checkout.

3. Build and deploy the example by running the following command from the Seam
   "examples/${example.name}" directory:
   
   ant explode
   
   To undeploy the example, run:

   ant unexplode

   To restart the deployed application, run:

   ant restart

4. Start JBoss AS by typing "./run.sh" (on Linux/Unix) or "run" (on Windows) 
   in the jboss-eap-5/bin directory

5. Point your web browser to:

   http://localhost:8080/seam-${example.name}

   Recall that ${example.name} is the name of the example folder unless the
   folder begins with seam, in which the prefix "seam" is omitted. The
   context path is set in META-INF/application.xml for EAR deployments.

   However, WAR deployments use a different naming convention for the context
   path. If you deploy a WAR example, point your web browser to:

   http://localhost:8080/jboss-seam-${example.name}

   The WAR examples are groovybooking, jpa, hibernate, and spring

NOTE: The examples use the HSQL database embedded in JBoss AS


Running The TestNG Tests
------------------------

In the "examples/${example.name}" directory, type "ant test"


Running the TestNG Tests in Eclipse
-----------------------------------

1. Install the TestNG Eclipse plugin from http://beust.com/eclipse

2. From the example's home directory (e.g. booking for the booking example), run ant test. 

3. In Eclipse, click on File > New > Project.... 

4. Select Java Project from Existing Ant Buildfile from the New Project Wizard, and click Next. 

5. Select the example's build.xml file as the base for the new Java project. 

6. Select Testing Suite or Testing Class. 

7. From the Run As menu, choose TestNG Test. You can cancel the processing of the test run at any time. 

8. Go to Run > Run configurations and edit the created TestNG runner. 

9. If JDK 1.6 is used as runtime, add the following JVM argument on the Arguments tab: 
	
	-Dsun.lang.ClassLoader.allowArraySyntax=true

10. Go to the Classpath tab and remove all User entries. 

11. Add the JARs and folders specified by http://seamframework.org/Community/GettingStartedDevelopingTheSeamFramework#H-RunningIntegrationTestsFromTheTestNGEclipsePlugin.

