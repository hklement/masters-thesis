## Versatility {#section:versatility}

An important requirement of \tool is to support a wide range of application domains, programming languages, and testing frameworks in order to fit the needs of various programming courses. This section presents a number of assignment domains that have been implemented prototypically. While \tool’s possibilities are far from being exhausted, we believe that the chosen examples underline the application’s versatility.

##### Interpreted Languages

A popular choice for teaching programming concepts to novices is using dynamic, high-level programming languages. Such languages typically feature a concise syntax that allows learners to express working programs within few lines of code and without dealing with low-level implementation issues.

In this regard, \tool currently supports Ruby, Python, JavaScript, and CoffeeScript\foo{http://coffeescript.org/}, the latter two based on Node.js\foo{http://nodejs.org/}. Further execution environments for scripting languages can easily be defined since usually only an interpreter has to be installed. For each of the languages, assessment is based on a testing framework that is commonly used with the particular language. Namely, we use RSpec for Ruby, PyUnit\foo{http://pyunit.sourceforge.net/} for Python, and Jasmine for JavaScript and CoffeeScript.

##### Compiled Languages

Besides novice-friendly scripting languages, a handful of compiled languages play an important role in education. Java has been the dominant introductory teaching language over the past decade \cite{guo2014python}. Also, C and C++ are commonly used as introductory languages \cite{ala2004supporting,vogel2014quality} due to their dominant role in \glspl{os}, embedded systems, and real-time rendering.

In contrast to interpreted languages, whose programs can usually be executed using a single command, compiled languages require multi-command workflows for execution. In the example of Java, the execution of an application comprises setting up the class path, compiling source files to bytecode class files, and finally launching the application by specifying the class whose main method to invoke. The workflow’s complexity grows if third-party packages are involved.

As presented in Section \ref{section:domain-model}, \tool’s design provides that execution environments use a single command for running student submissions as well as another command for invoking the tests used for assessment. In order to make more complex execution workflows fit into this concept, we recommend using build utilities, such as Ant\foo{http://ant.apache.org/} and Make\foo{http://www.gnu.org/software/make/}. Depending on their teaching objectives, instructors can provide learners with prepared build recipes, such as Makefiles, or require students to write the build files themselves.

##### Web Development

Web development skills are attractive to learners and demanded by the market \cite{european2014support}, which is why web programming gains a stronger position in \cs curricula \cite{ihantola2010review}. To support this trend, \tool offers means for building client-side to full-stack web applications.

Simple websites and web applications that only use client-side technologies such as \gls{html}, JavaScript, and \gls{css} do not require Docker-based execution. Instead, they are rendered in a separate window in the learner’s web browser. By integrating powerful JavaScript frameworks, such as AngularJS\foo{https://angularjs.org/}, Ember.js\foo{http://emberjs.com/}, and D3.js\foo{http://d3js.org/}, impressive applications can be realized solely using client-side capabilities. Assessment for client-side web applications can be provided by testing the JavaScript portion, using a web testing framework, or inspecting the \gls{html} markup for validity and presence of expected elements.

Not only client-side web programming is supported by \tool but also the development of full-stack web applications. An exemplary execution environment is based on Sinatra\foo{http://www.sinatrarb.com/}, a lightweight Ruby web application framework. To run such a web application, the execution environment’s run command starts a process that serves the application from within the container. By exposing the port that the web server is running on, learners are able to connect to their application and try it out.

##### Databases

Besides general-purpose programming courses, \moocs dealing with database topics, such as Coursera’s popular “Introduction to Databases”\foo{https://www.coursera.org/course/db} and openHPI’s “In-Memory Data Management”\foo{https://open.hpi.de/courses/imdb2014}, can benefit from practical exercises. Therefore, we prepared two execution environments for the purpose of database assignments.

The first database-related execution environment is dedicated to the lightweight SQLite\foo{http://www.sqlite.org/} database. Students work with a local database that grants unlimited privileges for data definition and data manipulation. Since a new Docker container is provided for every query execution, potentially undesirable effects of earlier queries cannot cause problems.

The second execution environment for database assignments is based on SAP’s in-memory database HANA\foo{http://www.saphana.com/}. All students’ queries are executed against a single shared database located on a remote server. Since destructive database operations would affect all learners, access rights to the database should be limited to user-specific schemas or restricted to reading data and calling read-only stored procedures.

There are two options for the execution of database queries. Students either write plain \gls{sql} statements, which are transparently executed in a manner prepared by the instructor, or they write programs that make use of high-level database abstractions, such as provided by Active Record and JDBC\foo{http://www.oracle.com/technetwork/java/javase/jdbc/index.html}.

In line with these approaches, automated assessment can be realized by comparing a learner’s query’s result set against that of a reference query or by verifying correctness using an appropriate testing framework.

Context-specific hints can be provided for common beginners’ mistakes related to \gls{sql}, such as misnamed fields and relations, incorrect clause order, and incomplete statements.