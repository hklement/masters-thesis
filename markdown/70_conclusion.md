This work addressed the question how \moocs can integrate practical programming assignments in a way that meets the demands of novice programmers and satisfies the scalability requirements of large-scale e-learning environments.

As a solution to this question, we presented \tool, a web-based platform that provides hands-on programming exercises for \moocs and that essentially fulfills the requirements identified in Section \ref{section:requirements}.

##### Versatility

\tool provides a versatile training platform that fits the needs of various programming courses. By using Docker for running students’ code submissions, the application is open to a wide variety of programming languages and program domains. Tailor-made execution environments are easily configurable by instructors and enable the use of third-party applications, libraries, and custom tools. Since \tool does not restrain exercise complexity, practical assignments can range from short beginners’ programs to much more elaborate tasks. The ability to work with multiple files and to create new ones enables students to practice program composition and exceeds the usual functionality of web-based development environments used in \moocs that we regarded.

Assessment of code submissions is based on automatic execution of tests but does not dictate a certain strategy. The approach provides instructors with the flexibility to use a testing framework of their choice. Therefore, teachers can employ the tools and techniques that they are most familiar with, that fit the assignment best, or that provide the deepest insights.

##### Novice-Friendliness

We believe that \tool offers a novice-friendly platform for practicing programming. Its web-based development environment provides learners with a homogeneous and installation-free training environment, is easy to use, and presents a low barrier for starting programming. While \tool’s \gls{ui} is simple, the application offers decent development capabilities. On-demand code execution, easily understandable hints for errors, and natural-language feedback for failing tests facilitate students’ problem-solving processes and enable an iterative development cycle.

##### Scalability

While the chosen approaches for code execution and assessment theoretically offer the scalability for a large-scale usage of \tool, our evaluation revealed practical limitations in terms of code execution (see Section \ref{section:scalability}). Further efforts have to be made in order to provide the necessary scalability for using the application in a large-scale e-learning context, such as a \mooc.

##### Security

Secure execution of arbitrary student-written programs is enabled by \gls{os}-level virtualization based on Docker. Besides offering lightweight virtualization, Docker provides abstractions and tools that facilitate the creation of custom execution environments and permit instructors to perform every aspect of the content creation process by themselves.

##### Interoperability

Instead of extending a single \mooc platform for supporting practical programming assignments, we decided to develop a stand-alone web application whose services can benefit different e-learning systems, such as \glspl{lms} and \mooc platforms. By offering compliance with \gls{lti}, an established interoperability standard for e-learning applications, \tool is usable as a special-purpose extension for a wide range of existing e-learning systems.